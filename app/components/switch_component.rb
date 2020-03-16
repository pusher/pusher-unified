# frozen_string_literal: true

class SwitchComponent < ActionView::Component::Base
  def initialize(name:, switches: [])
    @name = name
    @switches = switches
  end
end
