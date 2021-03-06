# frozen_string_literal: true

class TooltipComponent < ActionView::Component::Base
  include ApplicationHelper
  validates :content, presence: true

  def initialize(id:, classes: '', width: '', position: 'below')
    base_classes = %w[db ml3 bg-transparent pv1]
    all_classes = base_classes
    all_classes << classes unless classes.nil?

    @id = id
    @classes = all_classes.join(' ')
    @width = width
    @position = position unless position == 'below'
  end
end
