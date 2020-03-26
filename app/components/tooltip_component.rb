# frozen_string_literal: true

class TooltipComponent < ActionView::Component::Base
  include ApplicationHelper
  validates :content, presence: true

  def initialize(id:, classes: '', width: '', position: 'below')
    @id = id
    @classes = classes
    @width = width
    @position = position unless position == 'below'
  end
end
