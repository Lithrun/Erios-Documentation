# frozen_string_literal: true

require "open3"
require "time"

# Stamps documentation pages with the date their source file last changed in git.
#
# Jekyll gives a collection document without a `date` the build time as its
# date, so minimal-mistakes' "Updated:" footer showed the day the site was last
# deployed (including the weekly scheduled build) instead of the day the page
# was last edited. This generator sets `last_modified_at`, which the footer
# prefers over `date`, to the committer date of the last commit that touched
# each doc. A `last_modified_at` set in front matter wins, and docs git does not
# know about yet (new, uncommitted files) keep the old behaviour.
#
# The deploy workflow must check out the full history (`fetch-depth: 0`): in a
# shallow clone every file looks like it was last changed by HEAD.
module Erios
  class GitLastModified < Jekyll::Generator
    safe true
    priority :low

    COLLECTION = "docs"

    def generate(site)
      collection = site.collections[COLLECTION]
      return unless collection

      dates = last_commit_dates(site.source, collection.relative_directory)
      collection.docs.each do |doc|
        next if doc.data.key?("last_modified_at")

        date = dates[doc.relative_path]
        doc.data["last_modified_at"] = date if date
      end
    end

    private

    # Walks the history of `dir` once, newest commit first, so the first commit
    # a path shows up in is the last one that changed it.
    def last_commit_dates(source, dir)
      out, status = Open3.capture2(
        "git", "-c", "core.quotePath=false", "log", "--format=%x00%cI", "--name-only", "--", dir,
        chdir: source
      )
      return {} unless status.success?

      dates = {}
      out.split("\x00").each do |entry|
        date, *paths = entry.lines.map(&:chomp).reject(&:empty?)
        next unless date

        time = Time.iso8601(date)
        paths.each { |path| dates[path] ||= time }
      end
      dates
    rescue Errno::ENOENT
      Jekyll.logger.warn "GitLastModified:", "git not found, docs keep their default date"
      {}
    end
  end
end
