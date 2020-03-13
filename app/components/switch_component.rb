# frozen_string_literal: true

class SwitchComponent < ActionView::Component::Base
  def initialize(name:,
                 left_label:,
                 right_label:,
                 checked: 'left')

    @name = name
    @left_id = "#{name}-#{SecureRandom.hex(4)}"
    @right_id = "#{name}-#{SecureRandom.hex(4)}"
    @left_label = left_label
    @right_label = right_label
    @checked = checked
  end
end
