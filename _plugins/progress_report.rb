# frozen_string_literal: true

require "date"
require "nokogiri"

# Turns the generated progress report (_pages/progress.md, produced by the
# Erios-Compendium CI job) into structured data for the `progress` layout.
#
# The generator only knows how to write markdown: a note, a summary sentence,
# an "Overview" section with three lists, and one table per category under the
# "Demo", "Release" and "Future" headings. Rather than teaching the generator a
# second output format, this generator renders that markdown to HTML at build
# time, reads the headings, lists and tables back out of it, and stores the
# result in `page.progress`. The layout then draws the readiness meter, the
# hours chart, the backlog and the completed list from that data. When the
# markdown does not look like a progress report, `page.progress` stays unset and
# the layout falls back to rendering the markdown as-is.
module Erios
  class ProgressReport < Jekyll::Generator
    safe true
    priority :low

    STATE_LABELS = {
      "Completed"  => "Completed",
      "InProgress" => "In progress",
      "OnHold"     => "On hold",
      "Todo"       => "To do",
    }.freeze
    STATE_ORDER = %w[InProgress OnHold Todo Completed].freeze
    PHASES = { "demo" => "Demo", "release" => "Release", "future" => "Future" }.freeze
    AXIS_STEP = 50

    def generate(site)
      site.pages.each do |page|
        next unless page.data["layout"] == "progress"

        # The generator ships its own <style> block for a progress bar that is
        # never rendered; drop it so it cannot leak into the new layout.
        page.content = page.content.gsub(%r{<style>.*?</style>}m, "")

        html = site.find_converter_instance(Jekyll::Converters::Markdown).convert(page.content)
        report = Parser.new(html).parse
        next unless report

        page.data["progress"] = Model.new(report).to_liquid
      end
    end

    # Reads the rendered report back into plain Ruby structures.
    class Parser
      def initialize(html)
        @doc = Nokogiri::HTML::DocumentFragment.parse(html)
      end

      def parse
        report = { "summary" => {}, "note_html" => nil, "sections" => [] }
        section = nil
        category = nil

        @doc.children.each do |node|
          next unless node.element?

          case node.name
          when "blockquote"
            read_note(node, report)
          when "p"
            if section.nil?
              read_summary(node.text, report["summary"])
            elsif category.nil? && section["intro"].nil?
              section["intro"] = node.text.strip
            end
          when "h2"
            section = { "key" => node["id"].to_s, "title" => node.text.strip, "intro" => nil, "categories" => [] }
            category = nil
            report["sections"] << section
          when "h3"
            next unless section
            category = { "name" => node.text.strip, "items" => [], "rows" => [] }
            section["categories"] << category
          when "ul"
            category["items"].concat(node.css("> li").map { |li| li.text.strip }) if category
          when "table"
            next unless category
            headers = node.css("thead th").map { |th| th.text.strip.downcase }
            node.css("tbody tr").each do |tr|
              cells = tr.css("td").map { |td| td.text.strip }
              category["rows"] << headers.zip(cells).to_h
            end
          end
        end

        has_tasks = report["sections"].any? { |s| s["categories"].any? { |c| c["rows"].any? } }
        has_tasks ? report : nil
      end

      private

      def read_note(node, report)
        text = node.text
        if (m = text.match(/last updated at:\s*(\d{2}-\d{2}-\d{4})(?:\s+(\d{2}:\d{2}))?/i))
          report["summary"]["updated"] = [m[1], m[2]].compact.join(" ")
        end
        # Keep the note itself, minus the "last updated" sentence which the
        # layout shows in the hero instead.
        node.css("em").each { |em| em.remove if em.text =~ /last updated/i }
        inner = node.css("> p").map(&:inner_html).join(" ")
        inner = inner.gsub(/<strong>\s*Note:\s*<\/strong>/i, "").gsub(/\s+/, " ").strip
        report["note_html"] = inner unless inner.empty?
      end

      def read_summary(text, summary)
        text = text.gsub(/\s+/, " ")
        if (m = text.match(%r{completed (\d+) / (\d+) tasks}i))
          summary["completed"] = m[1].to_i
          summary["total"] = m[2].to_i
        end
        if (m = text.match(/roughly (\d+) hours/i))
          summary["hours_left_buffered"] = m[1].to_i
        end
        if (m = text.match(/(\d+) to (\d+) hours a week/i))
          summary["week_hours_min"] = m[1].to_i
          summary["week_hours_max"] = m[2].to_i
        end
        if (m = text.match(/in (\d+) to (\d+) weeks/i))
          summary["weeks_min"] = m[1].to_i
          summary["weeks_max"] = m[2].to_i
        end
        if (m = text.match(/multiplied the number of hours by ([\d.]+)/i))
          summary["multiplier"] = m[1].to_f
        end
      end
    end

    # Computes everything the layout needs so the Liquid stays simple.
    class Model
      def initialize(report)
        @report = report
        @sections = report["sections"].to_h { |s| [s["key"], s] }
      end

      def to_liquid
        demo = tasks_for("demo")
        area_of = task_area_index

        areas = build_areas(demo)
        {
          "summary"   => summary(demo),
          "note_html" => @report["note_html"],
          "activity"  => activity(area_of),
          "areas"     => areas,
          "axis"      => axis(areas),
          "backlog"   => backlog,
          "completed" => completed(areas),
          "intro"     => @sections.transform_values { |s| s["intro"] },
        }
      end

      private

      # ---- shared helpers -------------------------------------------------

      def tasks_for(key)
        section = @sections[key] or return []
        section["categories"].flat_map do |cat|
          cat["rows"].map do |row|
            {
              "area"  => cat["name"],
              "name"  => row["task"].to_s,
              "state" => row["state"],
              "hours" => row.key?("hours") ? row["hours"].to_i : nil,
            }
          end
        end
      end

      def task_area_index
        PHASES.keys.flat_map { |k| tasks_for(k) }.to_h { |t| [t["name"], t["area"]] }
      end

      # "Gamemode - Arena" inside the Gamemode area reads as "Arena"; a prefix
      # that is not the area name ("Hergen - Storyline" under Design) stays.
      def short_name(name, area)
        m = name.match(/\A(.+?)\s[-–]\s(.+)\z/) or return name
        norm(m[1]) == norm(area.to_s) ? m[2] : name
      end

      def norm(text)
        text.downcase.strip.sub(/s\z/, "")
      end

      def slug(text)
        Jekyll::Utils.slugify(text)
      end

      def pct(part, whole)
        whole.to_i.zero? ? 0 : (part.to_f / whole * 100).round
      end

      def width(part, whole)
        whole.to_i.zero? ? 0.0 : (part.to_f / whole * 100).round(2)
      end

      def state_label(state)
        STATE_LABELS.fetch(state, state.to_s)
      end

      def task_liquid(task)
        {
          "name"        => task["name"],
          "short"       => short_name(task["name"], task["area"]),
          "state"       => task["state"],
          "state_label" => state_label(task["state"]),
          "hours"       => task["hours"],
        }
      end

      def sort_tasks(tasks)
        tasks.sort_by { |t| [STATE_ORDER.index(t["state"]) || STATE_ORDER.size, t["name"].downcase] }
      end

      def long_date(text, with_time: false)
        return nil if text.nil?
        if with_time
          dt = DateTime.strptime(text, "%d-%m-%Y %H:%M")
          dt.strftime("%-d %B %Y, %H:%M")
        else
          Date.strptime(text, "%Y-%m-%d").strftime("%-d %b %Y")
        end
      rescue ArgumentError
        text
      end

      # ---- pieces ---------------------------------------------------------

      def summary(demo)
        s = @report["summary"]
        completed = demo.count { |t| t["state"] == "Completed" }
        total = demo.size
        hours_done = demo.select { |t| t["state"] == "Completed" }.sum { |t| t["hours"].to_i }
        hours_total = demo.sum { |t| t["hours"].to_i }
        hours_left = hours_total - hours_done
        multiplier = s["multiplier"] || 1.0
        by_state = STATE_LABELS.keys.map do |state|
          count = demo.count { |t| t["state"] == state }
          { "key" => state, "label" => state_label(state), "count" => count, "width" => width(count, total) }
        end

        {
          "completed"           => completed,
          "total"               => total,
          "pct"                 => pct(completed, total),
          "hours_done"          => hours_done,
          "hours_total"         => hours_total,
          "hours_left"          => hours_left,
          "hours_left_buffered" => s["hours_left_buffered"] || (hours_left * multiplier).round,
          "multiplier"          => multiplier,
          "week_hours_min"      => s["week_hours_min"],
          "week_hours_max"      => s["week_hours_max"],
          "weeks_min"           => s["weeks_min"],
          "weeks_max"           => s["weeks_max"],
          "updated"             => long_date(s["updated"], with_time: true),
          "by_state"            => by_state,
        }
      end

      def activity(area_of)
        overview = @sections["overview"] or return nil
        lists = overview["categories"].to_h { |c| [slug(c["name"]), c["items"]] }
        entry = lambda do |item|
          m = item.match(/\A(.*?)\s*\((?:Completed|Created) on (\d{4}-\d{2}-\d{2})\)\z/)
          name = (m ? m[1] : item).strip
          area = area_of[name]
          {
            "name"  => name,
            "short" => area ? short_name(name, area) : name,
            "area"  => area,
            "date"  => m ? long_date(m[2]) : nil,
          }
        end
        {
          "in_progress"        => (lists["in-progress"] || []).map(&entry),
          "recently_completed" => (lists["recently-completed"] || []).map(&entry),
          "recently_added"     => (lists["recently-added"] || []).map(&entry),
        }
      end

      def build_areas(demo)
        groups = demo.group_by { |t| t["area"] }
        max_total = groups.values.map { |ts| ts.sum { |t| t["hours"].to_i } }.max.to_i
        top = [((max_total.to_f / AXIS_STEP).ceil * AXIS_STEP), AXIS_STEP].max

        areas = groups.map do |name, tasks|
          done = tasks.select { |t| t["state"] == "Completed" }
          open = tasks - done
          h_done = done.sum { |t| t["hours"].to_i }
          h_left = open.sum { |t| t["hours"].to_i }
          {
            "name"       => name,
            "slug"       => slug(name),
            "n"          => tasks.size,
            "done"       => done.size,
            "pct"        => pct(done.size, tasks.size),
            "h_done"     => h_done,
            "h_left"     => h_left,
            "h_total"    => h_done + h_left,
            "w_done"     => width(h_done, top),
            "w_left"     => width(h_left, top),
            "complete"   => open.empty?,
            "open_tasks" => sort_tasks(open).map { |t| task_liquid(t) },
            "done_tasks" => done.sort_by { |t| t["name"].downcase }.map { |t| task_liquid(t) },
          }
        end
        @axis_top = top
        areas.sort_by { |a| [-a["h_left"], -a["h_total"], a["name"]] }
      end

      def axis(_areas)
        top = @axis_top || AXIS_STEP
        ticks = (0..top).step(AXIS_STEP).map { |v| { "value" => v, "left" => width(v, top) } }
        { "top" => top, "ticks" => ticks }
      end

      def backlog
        items = []
        PHASES.each do |key, label|
          tasks_for(key).each do |t|
            next if t["state"] == "Completed"
            items << t.merge("phase" => label, "phase_key" => key)
          end
        end
        groups = items.group_by { |t| t["area"] }.sort_by { |name, _| name.downcase }.map do |name, ts|
          ordered = ts.sort_by { |t| [PHASES.keys.index(t["phase_key"]), t["name"].downcase] }
          {
            "name"  => name,
            "slug"  => slug(name),
            "count" => ts.size,
            "hours" => ts.sum { |t| t["hours"].to_i },
            "items" => ordered.map { |t| task_liquid(t).merge("phase" => t["phase"], "phase_key" => t["phase_key"]) },
          }
        end
        counts = PHASES.keys.to_h { |k| [k, items.count { |t| t["phase_key"] == k }] }
        { "total" => items.size, "counts" => counts, "groups" => groups }
      end

      def completed(areas)
        areas.select { |a| a["done"].positive? }.sort_by { |a| a["name"].downcase }
      end
    end
  end
end
