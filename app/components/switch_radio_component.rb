# frozen_string_literal: true

class SwitchRadioComponent < ActionView::Component::Base
  def initialize(name:, switches: [])
    @name = name
    @switches = switches
  end
end
