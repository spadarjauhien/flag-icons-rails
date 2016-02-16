require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require 'active_support/core_ext/kernel/reporting'

Dir['test/support/**/*.rb'].each do |file|
  # strip ^test/ and .rb$
  file = file[5..-4]
  require_relative File.join('.', file)
end

GEM_PATH = File.expand_path('../', File.dirname(__FILE__))
