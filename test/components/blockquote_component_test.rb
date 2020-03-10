# frozen_string_literal: true

require 'test_helper'
class BlockquoteComponentTest < ActionView::Component::TestCase
  basic_quote = %(<blockquote class="ma0 ph5">
  <p class="f6 slate mb4 measure">Luke, I am your father.</p>
</blockquote>)

  test 'Renders basic quote' do
    assert_equal(
      basic_quote,
      render_inline(BlockquoteComponent.new) { 'Luke, I am your father.' }.css('blockquote').to_html
    )
  end

  test 'Renders quote with cite_name and cite_role' do
    assert_equal(
      'Darth Vader Sith Lord',
      render_inline(BlockquoteComponent.new(
                      cite_name: 'Darth Vader',
                      cite_role: 'Sith Lord'
                    )) { 'Luke, I am your father.' }.css('cite').text.tr('\n', ' ').strip
    )
  end
end
