require 'test_helper'

describe FlagIconsRails::Rails::ViewHelpers do
  let(:helpers) { ActionController::Base.helpers }

  describe '#flag_icon' do
    it 'renders flag icon with country code' do
      assert_flag_icon(
        helpers.flag_icon(:by),
        span('flag-icon flag-icon-by')
      )
    end

    it 'renders correct flag icon with squared eq true' do
      assert_flag_icon(
        helpers.flag_icon(:by, true),
        span('flag-icon flag-icon-by flag-icon-squared')
      )
    end

    it 'renders correct flag icon with custom css class' do
      assert_flag_icon(
        helpers.flag_icon(:by, class: 'custom'),
        span('flag-icon flag-icon-by custom')
      )
    end

    it 'renders correct flag icon with html options' do
      assert_flag_icon(
        helpers.flag_icon(:by, id: 'flag_id'),
        span('flag-icon flag-icon-by', 'flag_id')
      )
    end

    it 'renders correct flag icon with squared eq true and custom css class' do
      assert_flag_icon(
        helpers.flag_icon(:by, true, class: 'custom'),
        span('flag-icon flag-icon-by flag-icon-squared custom')
      )
    end

    it 'renders correct flag icon with squared eq true and html options' do
      assert_flag_icon(
        helpers.flag_icon(:by, true, id: 'flag_id'),
        span('flag-icon flag-icon-by flag-icon-squared', 'flag_id')
      )
    end

    it 'renders correct flag icon with custom css class and html options' do
      assert_flag_icon(
        helpers.flag_icon(:by, class: 'custom', id: 'flag_id'),
        span('flag-icon flag-icon-by custom', 'flag_id')
      )
    end

    it 'renders correct flag icon with squared eq true, custom css class and html options' do
      assert_flag_icon(
        helpers.flag_icon(:by, true, class: 'custom', id: 'flag_id'),
        span('flag-icon flag-icon-by flag-icon-squared custom', 'flag_id')
      )
    end

    def span(css_class, id = nil)
      "<span class=\"#{css_class}\" #{"id=\"#{id}\"" if id}></span>"
    end

    def assert_flag_icon(actual, expected)
      expected_dom = HTML::Document.new(expected).root
      actual_dom   = HTML::Document.new(actual).root

      actual_dom.must_equal(expected_dom)
    end
  end
end
