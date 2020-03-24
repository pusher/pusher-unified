# frozen_string_literal: true

class SwitchCheckboxComponent < ActionView::Component::Base
  def initialize(name:, label:, checked: false)
    @name = name
    @label = label
    @checked = checked
  end
end
