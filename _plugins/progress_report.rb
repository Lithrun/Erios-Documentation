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
# result in `page.progress`: one entry per phase listed in _data/progress.yml,
# each built from one of those sections. The layout draws the phase switcher,
# each phase's bar, and its task lists from that data. When the markdown does
# not look like a progress report, `page.progress` stays unset and the layout
# falls back to rendering the markdown as-is.
#
# The report also carries an hours estimate per task. Those hours are only used
# to work out the estimate in weeks; none of them are passed on to the layout,
# and the page content is cleared so they cannot end up in the built site some
# other way.
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
    STATUS_LABELS = { "done" => "Finished", "now" => "Now", "next" => "Up next", "later" => "Later" }.freeze

    # Used when _data/progress.yml lists no phases.
    DEFAULT_PHASES = [
      { "id" => "demo", "title" => "Road to Demo", "section" => "demo" },
      { "id" => "release", "title" => "Road to Release", "section" => "release" },
      { "id" => "updates", "title" => "Endless Updates", "section" => "future" },
    ].freeze

    def generate(site)
      markdown = site.find_converter_instance(Jekyll::Converters::Markdown)
      config = site.data["progress"] || {}

      site.pages.each do |page|
        next unless page.data["layout"] == "progress"

        report = Parser.new(markdown.convert(page.content)).parse
        next unless report

        page.data["progress"] = Model.new(report, config, markdown).to_liquid
        page.content = ""
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
            # Only the note at the top; a quote inside a section is the
            # generator's remark that nothing is in progress.
            read_note(node, report) if section.nil?
          when "p"
            read_summary(node.text, report["summary"]) if section.nil?
          when "h2"
            section = { "key" => node["id"].to_s, "title" => node.text.strip, "categories" => [] }
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
        if (m = text.match(/last updated at:\s*(\d{2}-\d{2}-\d{4})/i))
          report["summary"]["updated"] = m[1]
        end
        # Keep the note itself, minus the "last updated" sentence which the
        # layout shows on its own.
        node.css("em").each { |em| em.remove if em.text =~ /last updated/i }
        inner = node.css("> p").map(&:inner_html).join(" ")
        inner = inner.gsub(/<strong>\s*Note:\s*<\/strong>/i, "").gsub(/<br\s*\/?>/i, " ").gsub(/\s+/, " ").strip
        report["note_html"] = inner unless inner.empty?
      end

      # Reads the demo's week range and the pace the generator assumes; the hour
      # totals stay out of the page.
      def read_summary(text, summary)
        text = text.gsub(/\s+/, " ")
        if (m = text.match(/in (\d+) to (\d+) weeks/i))
          summary["weeks_min"] = m[1].to_i
          summary["weeks_max"] = m[2].to_i
        end
        if (m = text.match(/(\d+) to (\d+) hours a week/i))
          summary["week_hours"] = [m[1].to_i, m[2].to_i]
        end
        if (m = text.match(/multiplied the number of hours by ([\d.]+)/i))
          summary["multiplier"] = m[1].to_f
        end
      end
    end

    # Computes everything the layout needs so the Liquid stays simple.
    class Model
      def initialize(report, config, markdown)
        @report = report
        @config = config
        @markdown = markdown
        @sections = report["sections"].to_h { |s| [s["key"], s] }
      end

      def to_liquid
        phases = Array(@config["phases"]).select { |p| p.is_a?(Hash) && p["id"] && p["section"] }
        phases = DEFAULT_PHASES if phases.empty?
        current = phases.index { |p| p["id"] == @config["current"] } || 0
        built = phases.each_with_index.map { |cfg, i| phase(cfg, i - current) }
        add_eta(built)
        info = @config["estimate_info"].to_s.strip
        {
          "updated"            => long_date(@report["summary"]["updated"], "%d-%m-%Y"),
          "estimate_info_html" => info.empty? ? nil : @markdown.convert(info),
          "phases"             => built,
        }
      end

      private

      # ---- shared helpers -------------------------------------------------

      # The tasks of one report section. A section without a state column
      # (release, future) holds tasks that have not been started.
      def tasks_for(key)
        section = @sections[key] or return []
        section["categories"].flat_map do |cat|
          cat["rows"].map do |row|
            {
              "area"  => cat["name"],
              "name"  => row["task"].to_s,
              "state" => STATE_LABELS.key?(row["state"]) ? row["state"] : "Todo",
              "hours" => row.key?("hours") ? row["hours"].to_i : nil,
            }
          end
        end
      end

      def task_area_index
        @sections.keys.flat_map { |k| tasks_for(k) }.to_h { |t| [t["name"], t["area"]] }
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

      def state_label(state)
        STATE_LABELS.fetch(state, state.to_s)
      end

      def task_liquid(task)
        {
          "short"       => short_name(task["name"], task["area"]),
          "state"       => task["state"],
          "state_label" => state_label(task["state"]),
        }
      end

      def long_date(text, format)
        return nil if text.nil?
        Date.strptime(text, format).strftime("%-d %B %Y")
      rescue ArgumentError
        text
      end

      # The estimate in weeks for a section's open tasks. The generator already
      # works it out for the demo; for other sections it is worked out here the
      # same way, from the hours on each task. The hours never leave this method.
      def weeks(section, open)
        summary = @report["summary"]
        return [summary["weeks_min"], summary["weeks_max"]] if section == "demo" && summary["weeks_min"]

        hours = open.map { |t| t["hours"] }
        return [nil, nil] if hours.empty? || hours.include?(nil)
        return [nil, nil] unless summary["multiplier"] && summary["week_hours"]

        buffered = (hours.sum * summary["multiplier"]).round
        slow, fast = summary["week_hours"]
        [(buffered.to_f / fast).round, (buffered.to_f / slow).round]
      end

      # Dates the end of each upcoming phase that asks for it (`show_dates` in
      # _data/progress.yml) as a range of quarters, counted from the day the
      # report was made. A phase starts when the one before it ends, so the
      # estimates of every phase up to it add up. A phase without an estimate
      # leaves the phases after it undated.
      def add_eta(phases)
        start = Date.strptime(@report["summary"]["updated"].to_s, "%d-%m-%Y") rescue Date.today
        min = max = 0
        phases.each do |ph|
          next if ph["status"] == "done"
          break if ph["weeks"].include?(nil)

          min += ph["weeks"][0]
          max += ph["weeks"][1]
          ph["eta"] = quarter_range(start + (min * 7), start + (max * 7)) if ph["show_dates"]
        end
      end

      def quarter_range(from, to)
        first = "#{from.year} Q#{((from.month - 1) / 3) + 1}"
        last = "#{to.year} Q#{((to.month - 1) / 3) + 1}"
        first == last ? first : "#{first} – #{last}"
      end

      def time_left(min, max)
        return nil if min.nil? || max.nil?
        return "less than a week" if max.zero?
        return "up to #{weeks_text(max)}" if min.zero?
        return "about #{weeks_text(max)}" if min == max

        "#{min}–#{max} weeks"
      end

      def weeks_text(count)
        count == 1 ? "1 week" : "#{count} weeks"
      end

      # ---- pieces ---------------------------------------------------------

      def phase(cfg, position)
        tasks = tasks_for(cfg["section"])
        done = tasks.select { |t| t["state"] == "Completed" }
        open = tasks - done
        started = done.any? || open.any? { |t| t["state"] != "Todo" }
        status = if position.negative? then "done"
                 elsif position.zero? then "now"
                 elsif position == 1 then "next"
                 else "later"
                 end
        areas = started ? build_areas(tasks) : []
        recent = status == "now" ? activity(task_area_index) : nil
        estimate = open.empty? ? [0, 0] : weeks(cfg["section"], open)

        views = []
        views << { "id" => "categories", "label" => "Categories", "count" => areas.size } if started
        views << { "id" => "todo", "label" => started ? "To do" : "Planned", "count" => open.size } if open.any?
        views << { "id" => "done", "label" => "Completed", "count" => done.size } if done.any?
        views << { "id" => "activity", "label" => "Recent activity", "count" => nil } if recent

        {
          "id"               => cfg["id"].to_s,
          "title"            => cfg["title"].to_s,
          "from"             => cfg["from"],
          "start_date"       => started_on(cfg["started"]),
          "to"               => cfg["to"],
          "status"           => status,
          "status_label"     => STATUS_LABELS[status],
          "description_html" => description(cfg),
          "started"          => started,
          "total"            => tasks.size,
          "completed"        => done.size,
          "open"             => open.size,
          "pct"              => pct(done.size, tasks.size),
          "by_state"         => by_state(tasks),
          "bar_label"        => by_state(tasks).select { |s| s["count"].positive? }.map { |s| "#{s['count']} #{s['label'].downcase}" }.join(", "),
          "weeks"            => estimate,
          "show_dates"       => cfg["show_dates"] == true,
          "time_left"        => open.empty? ? nil : time_left(*estimate),
          "views"            => views,
          "areas"            => areas,
          "todo"             => todo_groups(open),
          "done"             => done_groups(tasks),
          "activity"         => recent,
        }
      end

      # YAML reads 2022-06-25 as a Date; a quoted date arrives as a string.
      def started_on(value)
        return nil if value.nil?

        date = value.is_a?(Date) ? value : Date.parse(value.to_s)
        date.strftime("%-d %B %Y")
      rescue ArgumentError
        nil
      end

      def description(cfg)
        text = cfg["description"].to_s.strip
        return @markdown.convert(text) unless text.empty?

        # Without a description of its own, the demo falls back to the note the
        # generator writes.
        cfg["section"] == "demo" && @report["note_html"] ? "<p>#{@report['note_html']}</p>" : nil
      end

      def by_state(tasks)
        STATE_LABELS.keys.map do |state|
          { "key" => state, "label" => state_label(state), "count" => tasks.count { |t| t["state"] == state } }
        end
      end

      # Tasks per area, done versus left, plus what is being worked on.
      def build_areas(tasks)
        areas = tasks.group_by { |t| t["area"] }.map do |name, ts|
          done = ts.select { |t| t["state"] == "Completed" }
          open = ts - done
          {
            "name"     => name,
            "n"        => ts.size,
            "done"     => done.size,
            "left"     => open.size,
            "pct"      => pct(done.size, ts.size),
            "complete" => open.empty?,
            "working"  => working(open),
          }
        end
        areas.sort_by { |a| [-a["left"], -a["n"], a["name"]] }
      end

      # The in-progress and on-hold tasks of an area, one entry per state.
      def working(tasks)
        %w[InProgress OnHold].filter_map do |state|
          names = tasks.select { |t| t["state"] == state }.map { |t| short_name(t["name"], t["area"]) }
          next if names.empty?

          { "names" => names.sort_by(&:downcase).join(", "), "label" => state_label(state).downcase }
        end
      end

      def todo_groups(open)
        open.group_by { |t| t["area"] }.sort_by { |name, _| name.downcase }.map do |name, ts|
          items = ts.map { |t| task_liquid(t) }.sort_by { |t| [STATE_ORDER.index(t["state"]), t["short"].downcase] }
          { "name" => name, "slug" => slug(name), "count" => ts.size, "items" => items }
        end
      end

      def done_groups(tasks)
        tasks.group_by { |t| t["area"] }.sort_by { |name, _| name.downcase }.filter_map do |name, ts|
          done = ts.select { |t| t["state"] == "Completed" }
          next if done.empty?

          items = done.map { |t| task_liquid(t) }.sort_by { |t| t["short"].downcase }
          { "name" => name, "slug" => slug(name), "done" => done.size, "n" => ts.size, "items" => items }
        end
      end

      def activity(area_of)
        overview = @sections["overview"] or return nil
        lists = overview["categories"].to_h { |c| [slug(c["name"]), c["items"]] }
        entry = lambda do |item|
          m = item.match(/\A(.*?)\s*\((?:Completed|Created) on (\d{4}-\d{2}-\d{2})\)\z/)
          name = (m ? m[1] : item).strip
          area = area_of[name]
          {
            "short" => area ? short_name(name, area) : name,
            "area"  => area,
            "date"  => m ? long_date(m[2], "%Y-%m-%d") : nil,
          }
        end
        {
          "in_progress"        => (lists["in-progress"] || []).map(&entry),
          "recently_completed" => (lists["recently-completed"] || []).map(&entry),
          "recently_added"     => (lists["recently-added"] || []).map(&entry),
        }
      end
    end
  end
end
