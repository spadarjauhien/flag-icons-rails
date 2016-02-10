$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "flag-icons-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'flag-icons-rails'
  s.version     = FlagIconsRails::VERSION
  s.authors     = ['Eugene Garlukovich']
  s.email       = ['eugene.garlukovich@gmail.com']
  s.homepage    = 'https://github.com/eugenegarl/flag-icons-rails'
  s.summary     = 'flag-icon-css sass gem for use in Ruby/Rails projects'
  s.description = <<-EOF
    'flag-icons-rails' gem allows you to integrate sass version of
    https://github.com/lipis/flag-icon-css into your Ruby on Rails project.
  EOF
  s.license     = 'MIT'

  s.files = Dir["{app,lib}/**/*", 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_runtime_dependency 'sass', '~> 3.2'
end
