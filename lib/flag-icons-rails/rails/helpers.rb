module FlagIconsRails
  module Rails
    module ViewHelpers
      # Helper to render flag icon
      #
      # @param [Symbol|String] country_code {https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO 3166-1 alpha-2}
      #   country code
      # @param [true, false] :squared Optional. It is used to determine squared or rectangle version
      #   of flag will be rendered, defaults to +false+
      # @param [Hash] html_options Optional. HTML options applied to rendered span, defaults to +{}+
      #
      # @return [String] +span+ with requested HTML options to display country flag
      def flag_icon(country_code, squared: false, **html_options)
        html_options[:class] = flag_icon_content_class(country_code, squared, html_options[:class])

        content_tag(:span, nil, html_options)
      end

      private

      def flag_icon_content_class(country_code, squared, custom_css_class)
        content_class = "flag-icon flag-icon-#{country_code}"
        content_class << ' flag-icon-squared' if squared == true
        content_class << " #{custom_css_class}" if custom_css_class

        content_class
      end
    end
  end
end
