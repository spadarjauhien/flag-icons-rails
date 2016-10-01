require 'test_helper'

describe FlagIconsRails::Rails::ViewHelpers do
  let(:helpers) { ActionController::Base.helpers }

  describe '#flag_icon' do
    it 'renders flag icon with country code' do
      assert_have_tag(
        helpers.flag_icon(:by),
        'span.flag-icon.flag-icon-by'
      )
    end

    it 'renders correct flag icon with squared eq true' do
      assert_have_tag(
        helpers.flag_icon(:by, squared: true),
        'span.flag-icon.flag-icon-by.flag-icon-squared'
      )
    end

    it 'renders correct flag icon with custom css class' do
      assert_have_tag(
        helpers.flag_icon(:by, class: 'custom'),
        'span.flag-icon.flag-icon-by.custom'
      )
    end

    it 'renders correct flag icon with html options' do
      assert_have_tag(
        helpers.flag_icon(:by, id: 'flag_id'),
        'span#flag_id.flag-icon.flag-icon-by'
      )
    end

    it 'renders correct flag icon with squared eq true and custom css class' do
      assert_have_tag(
        helpers.flag_icon(:by, squared: true, class: 'custom'),
        'span.flag-icon.flag-icon-by.flag-icon-squared.custom'
      )
    end

    it 'renders correct flag icon with squared eq true and html options' do
      assert_have_tag(
        helpers.flag_icon(:by, squared: true, id: 'flag_id'),
        'span#flag_id.flag-icon.flag-icon-by.flag-icon-squared'
      )
    end

    it 'renders correct flag icon with custom css class and html options' do
      assert_have_tag(
        helpers.flag_icon(:by, class: 'custom', id: 'flag_id'),
        'span#flag_id.flag-icon.flag-icon-by.custom'
      )
    end

    it 'renders correct flag icon with squared eq true, custom css class and html options' do
      assert_have_tag(
        helpers.flag_icon(:by, squared: true, class: 'custom', id: 'flag_id'),
        'span#flag_id.flag-icon.flag-icon-by.flag-icon-squared.custom'
      )
    end
  end
end
