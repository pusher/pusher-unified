# frozen_string_literal: true

require 'test_helper'

class InputErrorLabelComponentTest < ActionView::Component::TestCase
  basic_error_label = %(<p class="f7 fw6 radish mb2" id="error-4738">This field is required</p>)

  test 'Error label should render as expected' do
    assert_equal(
      basic_error_label,
      render_inline(InputErrorLabelComponent.new(id: 'error-4738', label: 'This field is required')).css('p').to_html
    )
  end
end
