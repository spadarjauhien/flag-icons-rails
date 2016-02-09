$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "flag-icon-sass/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "flag-icon-sass"
  s.version     = FlagIconSass::VERSION
  s.authors     = ["Claudio Fiorini"]
  s.email       = ["claudio.fiorini@gmail.com"]
  s.homepage    = "https://github.com/cfiorini/flag-icon-sass"
  s.summary     = "Ruby Gem for flag-icon-css sass version"
  s.description = <<-EOF
    'flag-icon-sass' gem allows you to integrate sass version of
    https://github.com/lipis/flag-icon-css into your Ruby on Rails project.
  EOF
  s.license     = "MIT"

  s.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_runtime_dependency 'sass', '~> 3.2'
end
