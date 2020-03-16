# frozen_string_literal: true

class DropdownMenuComponent < ActionView::Component::Base
  include ApplicationHelper
  def initialize(label:, wrapper_element: 'div', wrapper_classes: '', size: 'small', show_caret: true, position_class: '', children: {})
    @label = label
    @wrapper_element = wrapper_element
    @wrapper_classes = wrapper_classes
    @size = size
    @id = "dropdown-#{SecureRandom.hex(4)}"
    @show_caret = show_caret
    @position_class = position_class
    @children = children
  end
end
