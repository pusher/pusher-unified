# frozen_string_literal: true

require 'test_helper'

class InputLabelComponentTest < ActionView::Component::TestCase
  basic_label = %(<label for="email" class="f7 mb2 db ">
  Email
</label>)

  test 'Label should render as expected' do
    assert_equal(
      basic_label,
      render_inline(InputLabelComponent.new(html_for: 'email', label: 'Email')).css('label').to_html
    )
  end

  extended_label = %(<label for="email" class="f7 mb2 db extra">
  Email
</label>)

  test 'Should pass extra classes' do
    assert_equal(
      extended_label,
      render_inline(InputLabelComponent.new(html_for: 'email', label: 'Email', classes: 'extra')).css('label').to_html
    )
  end
end
