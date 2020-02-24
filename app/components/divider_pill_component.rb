# frozen_string_literal: true

class DividerPillComponent < ActionView::Component::Base
  def initialize(text: 'or')
    @text = text
  end
end
