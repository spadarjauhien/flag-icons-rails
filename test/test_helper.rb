require 'minitest/spec'

require File.expand_path('../dummy/config/environment.rb',  __FILE__)
require 'rails/test_help'

ENV['RAILS_ENV'] = 'test'

Rails.backtrace_cleaner.remove_silencers!
