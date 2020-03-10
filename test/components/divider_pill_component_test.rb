# frozen_string_literal: true

require 'test_helper'
class DividerPillComponentTest < ActionView::Component::TestCase
  basic_divider = %(<div class="divider nl5 nr5 mv5 tc">
  <span class="bg-snow-dark br4 pv1 ph3 lh-solid f8 ba bw1 b--snow-dark">or</span>
</div>)

  test 'Divider should render with or by default' do
    assert_equal(
      basic_divider,
      render_inline(DividerPillComponent.new).css('div').to_html
    )
  end

  test 'Divider should render with passed text' do
    assert_equal(
      'or use email',
      render_inline(DividerPillComponent.new(text: 'or use email')).text.strip
    )
  end
end
