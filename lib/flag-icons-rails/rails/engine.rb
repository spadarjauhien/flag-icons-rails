# frozen_string_literal: true

module FlagIconsRails
  module Rails
    class Engine < ::Rails::Engine
      initializer 'flag-icons-rails.assets.precompile' do |app|
        %w[stylesheets images].each do |sub|
          app.config.assets.paths << root.join('app', 'assets', sub).to_s
        end
      end
    end
  end
end
