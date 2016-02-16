$:.push File.expand_path("../lib", __FILE__)

require "flag-icons-rails/version"

Gem::Specification.new do |s|
  s.name        = 'flag-icons-rails'
  s.version     = FlagIconsRails::VERSION
  s.authors     = ['Eugene Garlukovich']
  s.email       = ['eugene.garlukovich@gmail.com']
  s.homepage    = 'https://github.com/eugenegarl/flag-icons-rails'
  s.summary     = 'flag-icon-css sass gem for use in Ruby/Rails projects'
  s.description = <<-EOF
    'flag-icons-rails' gem allows you to integrate sass version of
    https://github.com/lipis/flag-icon-css into your Ruby/Rails project.
  EOF
  s.license     = 'MIT'

  s.files = Dir["{app,lib}/**/*", 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_runtime_dependency 'sass', '~> 3.2'

  # Testing dependencies
  s.add_development_dependency 'minitest', '~> 5.8'
  s.add_development_dependency 'minitest-reporters', '~> 1.1'
  # Dummy Rails app dependencies
  s.add_development_dependency 'actionpack', '~> 4.2.5'
  s.add_development_dependency 'activesupport', '~> 4.2.5'
end
