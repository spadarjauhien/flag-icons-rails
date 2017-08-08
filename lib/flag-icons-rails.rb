# frozen_string_literal: true

module FlagIconsRails
  class << self
    def load!
      if rails?
        register_rails_engine
      else
        configure_sass
      end
    end

    def root
      @root ||= File.expand_path('..', File.dirname(__FILE__))
    end

    def rails?
      defined?(::Rails)
    end

    private

    def stylesheets_path
      File.join(assets_path, 'stylesheets')
    end

    def assets_path
      @assets_path ||= File.join(root, 'app', 'assets')
    end

    def configure_sass
      require 'sass'

      ::Sass.load_paths << stylesheets_path
    end

    def register_rails_engine
      require 'flag-icons-rails/rails/engine'
      require 'flag-icons-rails/rails/railtie'
    end
  end
end

FlagIconsRails.load!
