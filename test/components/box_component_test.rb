# frozen_string_literal: true

require 'test_helper'

class BoxComponentTest < ActionView::Component::TestCase
  basic_box = %(<div class="br2 ba b--smoke-light pa5">
  Hello, components!
</div>)

  test 'Box should render with base classes and contain passed content' do
    assert_equal(
      basic_box,
      render_inline(BoxComponent.new) { 'Hello, components!' }.css('div').to_html
    )
  end

  advanced_box = %(<div class="br2 ba b--smoke-light pa5 testing classes">
  Hello, components!
</div>)

  test 'Box should render with base classes, passed classes and contain passed content' do
    assert_equal(
      advanced_box,
      render_inline(BoxComponent.new(classes: 'testing classes')) { 'Hello, components!' }.css('div').to_html
    )
  end
end
