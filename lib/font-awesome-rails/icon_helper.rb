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
        classes = icon_names(names).concat(Array(options[:class]))
        icon = content_tag(:i, nil, :class => classes)
        icon_join(icon, options[:text])
      end

      # Creates an stack set of icon tags given a base icon name, a main icon
      # name, and possible icon modifiers.
      #
      # Examples
      #
      #   fa_stacked_icon "check-empty", "twitter"
      #   # => <span class="icon-stack">
      #   # =>   <i class="icon-check-empty icon-stack-base"></i>
      #   # =>   <i class="icon-twitter"></i>
      #   # => </span>
      #
      #   fa_stacked_icon "sign-blank", "terminal light", class: "pull-right", text: "Hi!"
      #   # => <span class="icon-stack pull-right">
      #   # =>   <i class="icon-sign-blank icon-stack-base"></i>
      #   # =>   <i class="icon-terminal icon-light"></i>
      #   # => </span> Hi!
      def fa_stacked_icon(base_names, main_names, options = {})
        classes = icon_names("stack").concat(Array(options[:class]))
        base = fa_icon(base_names, :class => icon_names("stack-base"))
        icon = fa_icon(main_names)
        icon = content_tag(:span, safe_join([base, icon]), :class => classes)
        icon_join(icon, options[:text])
      end

      private

      def icon_join(icon, text)
        return icon if text.blank?
        safe_join([icon, ERB::Util.html_escape(text)], " ")
      end

      def icon_names(names = [])
        array_value(names).map { |n| "icon-#{n}" }
      end

      def array_value(value = [])
        value.is_a?(Array) ? value : value.split(/\s+/)
      end
    end
  end
end
