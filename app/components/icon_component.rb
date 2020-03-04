# frozen_string_literal: true

class IconComponent < ActionView::Component::Base
  include ApplicationHelper
  def initialize(name:, title:, size: 16, classes: '')
    @name = name
    @title = title
    @size = size
    @classes = classes
  end
end
