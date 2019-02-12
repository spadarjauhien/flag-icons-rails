# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'flag-icons-rails/version'

Gem::Specification.new do |s|
  s.name        = 'flag-icons-rails'
  s.version     = FlagIconsRails::VERSION
  s.authors     = ['Evgeny Garlukovich']
  s.email       = ['evgeny.garlukovich@gmail.com']
  s.homepage    = 'https://github.com/evgenygarl/flag-icons-rails'
  s.summary     = 'Gem to use `flag-icon-css` library in your Rails projects'
  s.description = 'Gem allows to use `flag-icon-css` - a collection of all country flags in SVG - in your Rails projects'
  s.license     = 'MIT'

  s.files       = Dir['{app,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.0'

  s.add_runtime_dependency 'sass', '~> 3.2'

  s.add_development_dependency 'railties', '>= 3.2', '< 6.0'
  s.add_development_dependency 'activesupport'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'minitest', '~> 5.10.0'
  s.add_development_dependency 'minitest-have_tag', '~> 0.1.0'
  s.add_development_dependency 'minitest-emoji', '~> 2.0.0'
  s.add_development_dependency 'yard', '~> 0.9.5'
  s.add_development_dependency 'rubocop', '~> 0.50.0'
end
