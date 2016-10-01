require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/emoji'
require 'minitest/have_tag'

require File.expand_path('../dummy/config/environment.rb', __FILE__)
require 'rails/test_help'

ENV['RAILS_ENV'] = 'test'

Rails.backtrace_cleaner.remove_silencers!
