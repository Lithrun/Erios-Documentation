# frozen_string_literal: true

# Lets posts reference their own bundled assets by bare filename in front matter.
#
# jekyll-postfiles copies every file that sits next to a post (in its own
# _posts/<date>/ folder) into that post's output folder, so a *body* link like
#   ![alt text](cover.png)
# already resolves. Front matter is different: minimal-mistakes pipes
# header.teaser / header.overlay_image / header.image through `relative_url`,
# which turns "cover.png" into "/cover.png", and teasers are rendered on archive
# pages where a relative path would resolve against the wrong folder anyway.
#
# This generator rewrites those bare filenames to the post's own URL, so
#   header:
#     teaser: cover.png
# becomes /post/archeology/cover.png. Values containing a slash or a scheme are
# left untouched, and a name is only rewritten when the file really does sit
# next to the post.
module Erios
  class PostHeaderAssets < Jekyll::Generator
    safe true
    priority :low

    HEADER_KEYS = %w[image teaser overlay_image].freeze

    def generate(site)
      site.posts.docs.each do |post|
        header = post.data["header"]
        next unless header.is_a?(Hash)

        HEADER_KEYS.each do |key|
          resolved = resolve(post, header[key])
          header[key] = resolved if resolved
        end
      end
    end

    private

    def resolve(post, value)
      return nil unless value.is_a?(String)
      return nil if value.empty? || value.include?("/") || value.include?("://")
      return nil unless File.file?(File.join(File.dirname(post.path), value))

      "#{post.url.chomp("/")}/#{value}"
    end
  end
end
