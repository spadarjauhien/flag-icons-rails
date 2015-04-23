module FlagIconSass
  module Rails
    class Engine < ::Rails::Engine
      initializer 'flag-icon-sass.assets.precompile' do |app|
        %w(stylesheets images).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
        app.config.assets.precompile << /\.(?:svg)\z/
      end
    end
  end
end
