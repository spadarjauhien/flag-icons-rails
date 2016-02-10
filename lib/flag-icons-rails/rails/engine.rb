module FlagIconsRails
  module Rails
    class Engine < ::Rails::Engine
      initializer 'flag-icons-rails.assets.precompile' do |app|
        Dir.glob("#{root}/app/assets/images/flags/**/").each do |path|
          app.config.assets.paths << path
        end
      end
    end
  end
end
