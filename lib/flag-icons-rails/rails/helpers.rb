module FlagIconsRails
  module Rails
    module ViewHelpers
      def flag_icon(cca2, squared = false, html_options = {})
        squared, html_options = false, squared if squared.is_a?(Hash)

        content_class = "flag-icon flag-icon-#{cca2}"
        content_class << " flag-icon-squared" if squared
        content_class << " #{html_options[:class]}" if html_options.key?(:class)
        html_options[:class] = content_class

        content_tag(:span, nil, html_options)
      end
    end
  end
end
