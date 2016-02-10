require "flag-icon-sass/rails/helpers"

module FlagIconSass
    module Rails
      class Railtie < ::Rails::Railtie
        initializer "flag-icon-sass.view_helpers" do
          ActionView::Base.send :include, ViewHelpers
        end
      end
    end
end