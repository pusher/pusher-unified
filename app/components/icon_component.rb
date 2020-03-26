# frozen_string_literal: true

class IconComponent < ActionView::Component::Base
  include ApplicationHelper
  def initialize(name:, title: '', size: 16, classes: '', width: nil, height: 'auto')
    @name = name
    @title = title
    @size = size
    @classes = classes
    @width = width.nil? ? size : width
    @height = height.nil? ? size : height
  end
end
