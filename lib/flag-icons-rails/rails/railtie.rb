# frozen_string_literal: true

require 'flag-icons-rails/rails/helpers'

module FlagIconsRails
  module Rails
    class Railtie < ::Rails::Railtie
      initializer 'flag-icons-rails.view_helpers' do
        ActionView::Base.send :include, ViewHelpers
      end
    end
  end
end
