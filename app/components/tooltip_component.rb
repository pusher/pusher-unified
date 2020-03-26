# frozen_string_literal: true

class TooltipComponent < ActionView::Component::Base
  include ApplicationHelper
  validates :content, presence: true

  def initialize(classes: '', width: '', position: 'below')
    @classes = classes
    @width = width
    @position = position unless position == 'below'
  end
end
