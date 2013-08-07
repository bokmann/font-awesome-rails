module FontAwesome
  module Rails
    module IconHelper
      # Creates an icon tag given an icon name and possible icon
      # modifiers.
      #
      # Examples
      #
      #   fa_icon "camera-retro"
      #   # => <i class="icon-camera-retro"></i>
      #
      #   fa_icon "camera-retro", text: "Take a photo"
      #   # => <i class="icon-camera-retro"></i> Take a photo
      #
      #   fa_icon "camera-retro 2x"
      #   # => <i class="icon-camera-retro icon-2x"></i>
      #   fa_icon ["camera-retro", "4x"]
      #   # => <i class="icon-camera-retro icon-4x"></i>
      #   fa_icon "spinner spin large"
      #   # => <i class="icon-spinner icon-spin icon-large">
      #
      #   fa_icon "quote-left 4x muted", class: "pull-left"
      #   # => <i class="icon-quote-left icon-4x icon-muted pull-left"></i>
      #
      #   content_tag(:li, fa_icon("ok li", text: "Bulleted list item"))
      #   # => <li><i class="icon-ok icon-li"></i> Bulleted list item</li>
      def fa_icon(names = "flag", options = {})
        classes = Private.icon_names(names).concat(Array(options[:class]))
        icon = content_tag(:i, nil, :class => classes)
        Private.icon_join(icon, options[:text])
      end

      # Creates an stack set of icon tags given a base icon name, a main icon
      # name, and possible icon modifiers.
      #
      # Examples
      #
      #   fa_stacked_icon "twitter", base: "check-empty"
      #   # => <span class="icon-stack">
      #   # =>   <i class="icon-check-empty icon-stack-base"></i>
      #   # =>   <i class="icon-twitter"></i>
      #   # => </span>
      #
      #   fa_stacked_icon "terminal light", base: "sign-blank", class: "pull-right", text: "Hi!"
      #   # => <span class="icon-stack pull-right">
      #   # =>   <i class="icon-sign-blank icon-stack-base"></i>
      #   # =>   <i class="icon-terminal icon-light"></i>
      #   # => </span> Hi!
      #
      #   fa_stacked_icon "camera", base: "ban-circle", reverse: true
      #   # => <span class="icon-stack">
      #   # =>   <i class="icon-camera"></i>
      #   # =>   <i class="icon-ban-circle icon-stack-base"></i>
      #   # => </span>
      def fa_stacked_icon(names = "flag", options = {})
        classes = Private.icon_names("stack").concat(Array(options[:class]))
        base = fa_icon(Private.array_value(options[:base]).push("stack-base"))
        main = fa_icon(names)
        icons = [base, main]
        icons.reverse! if options[:reverse]
        icon = content_tag(:span, safe_join(icons), :class => classes)
        Private.icon_join(icon, options[:text])
      end

      module Private
        extend ActionView::Helpers::OutputSafetyHelper

        def self.icon_join(icon, text)
          return icon if text.blank?
          safe_join([icon, ERB::Util.html_escape(text)], " ")
        end

        def self.icon_names(names = [])
          array_value(names).map { |n| "icon-#{n}" }
        end

        def self.array_value(value = [])
          value.is_a?(Array) ? value : value.to_s.split(/\s+/)
        end
      end
    end
  end
end
