# frozen_string_literal: true

unless defined?(JekyllLunarisHighlighterLoaded)
  JekyllLunarisHighlighterLoaded = true

  require "rouge"
  require "cgi"

  begin
    require "jekyll/hooks"
  rescue LoadError
    # Allow direct Ruby loading without the full Jekyll runtime.
  end

  module Rouge
    module Lexers
      class Lunaris < RegexLexer
        tag "lunaris"
        aliases "lun"
        filenames "*.lunaris", "*.lun"
        mimetypes "text/x-lunaris"

        title "Lunaris"
        desc "Lunaris scripting language"

        identifier = /[_A-Za-z]\w*/
        qualified_identifier = /#{identifier}(?:\.#{identifier})*/

        declarations = %w(class enum exception extension trait)
        keywords = %w(
          attempt break case catch const continue default else elseif finally for goto if
          import in is local new private protected public repeat return sealed static
          switch throw try until while with
        )
        pseudo_keywords = %w(base self this)
        constants = %w(nil true false)
        builtin_types = %w(any array bool boolean function number string table tuple userdata range thread)

        state :whitespace do
          rule %r/\s+/m, Text
          rule %r/\/\/.*?$/, Comment::Single
          rule %r/\/\*.*?\*\//m, Comment::Multiline
          rule %r/^#!.*?$/, Comment::Preproc
          rule %r/^#(?:define|if|elif|else|endif|error)\b.*?$/, Comment::Preproc
          rule %r/^#line\b.*?$/, Comment::Preproc
        end

        state :root do
          mixin :whitespace

          rule %r/@{1,2}#{identifier}/, Name::Decorator

          rule %r/\[\=*\[.*?\]\=*\]/m, Str
          rule %r/`/, Str::Backtick, :template_string
          rule %r/"(\\\\|\\"|[^"])*"/, Str::Double
          rule %r/'(\\\\|\\'|[^'])*'/, Str::Single

          rule %r/0[xX][0-9A-Fa-f]+(?:\.[0-9A-Fa-f]+)?(?:[pP][+-]?\d+)?/, Num::Hex
          rule %r/\d+\.\d+(?:[eE][+-]?\d+)?/, Num::Float
          rule %r/\.\d+(?:[eE][+-]?\d+)?/, Num::Float
          rule %r/\d+(?:[eE][+-]?\d+)?/, Num::Integer

          rule %r/\b(?:class|enum|exception|trait)\b/, Keyword::Declaration, :class_name
          rule %r/\bextension\b/, Keyword::Declaration, :type_name
          rule %r/\bfunction\b(?=\s+#{identifier})/, Keyword::Declaration, :function_name

          rule %r/(>?\.\.<|>\.\.|\.\.<|\.\.)/, Operator
          rule %r/(\?\?=|\?!=|\?\?|\?!|\?\.|\?\[|=>|\+\+|--|\+=|-=|\*=|\/=|%=|\^=|\.\.=|==|!=|~=|<=|>=|\|\||&&|::|\.\.\.)/, Operator
          rule %r/[=<>+*\/%\^!?:|&.#-]/, Operator
          rule %r/[,;()\[\]{}]/, Punctuation

          rule %r/\b(?:#{declarations.join("|")})\b/, Keyword::Declaration
          rule %r/\b(?:#{builtin_types.join("|")})\b/, Keyword::Type
          rule %r/\b(?:#{keywords.join("|")})\b/, Keyword
          rule %r/\b(?:#{pseudo_keywords.join("|")})\b/, Name::Builtin::Pseudo
          rule %r/\b(?:#{constants.join("|")})\b/, Keyword::Constant

          rule %r/#{identifier}(?=\s*\()/, Name::Function
          rule identifier, Name
        end

        state :template_string do
          rule %r/`/, Str::Backtick, :pop!
          rule %r/\\./, Str::Escape
          rule %r/\{/, Str::Interpol, :template_interp
          rule %r/[^\\`{]+/, Str::Backtick
          rule %r/[{]/, Str::Backtick
        end

        state :template_interp do
          rule %r/\{/, Str::Interpol, :push
          rule %r/\}/, Str::Interpol, :pop!
          mixin :root
        end

        state :class_name do
          mixin :whitespace
          rule qualified_identifier, Name::Class, :pop!
        end

        state :type_name do
          mixin :whitespace
          rule %r/\b(?:#{builtin_types.join("|")})\b/, Keyword::Type, :pop!
          rule qualified_identifier, Name::Class, :pop!
        end

        state :function_name do
          mixin :whitespace
          rule identifier, Name::Function, :pop!
        end
      end
    end
  end

  class << Rouge::Lexer
    unless method_defined?(:lunaris_find_fancy_without_fallback)
      alias_method :lunaris_find_fancy_without_fallback, :find_fancy

      def find_fancy(tag, code = nil)
        return Rouge::Lexers::Lunaris if %w[lunaris lun].include?(tag.to_s.strip.downcase)

        lunaris_find_fancy_without_fallback(tag, code)
      end
    end
  end

  module LunarisHighlighter
    CODE_BLOCK_PATTERN = %r{<pre><code class="([^"]*\blanguage-(?:lunaris|lun)\b[^"]*)">(.*?)</code></pre>}m

    module_function

    def highlight_code(code)
      normalized = code.to_s.encode("UTF-8", invalid: :replace, undef: :replace)
      formatter = ::Rouge::Formatters::HTMLLegacy.new(css_class: "highlight")
      formatter.format(::Rouge::Lexers::Lunaris.lex(normalized))
    end

    def highlight_html(output)
      output.gsub(CODE_BLOCK_PATTERN) do
        classes = Regexp.last_match(1)
        code = CGI.unescapeHTML(Regexp.last_match(2))
        %(<div class="#{classes} highlighter-rouge">#{highlight_code(code)}</div>)
      end
    end

    def process_document!(doc)
      return unless doc.respond_to?(:output)
      return unless doc.output&.include?("language-lunaris") || doc.output&.include?("language-lun")

      doc.output = highlight_html(doc.output)
    end
  end

  if defined?(Jekyll::Hooks)
    Jekyll::Hooks.register :site, :post_render do |site, _payload|
      site.pages.each do |page|
        LunarisHighlighter.process_document!(page)
      end

      site.collections.each_value do |collection|
        collection.docs.each do |doc|
          LunarisHighlighter.process_document!(doc)
        end
      end
    end
  end
end
