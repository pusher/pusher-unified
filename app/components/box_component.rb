# frozen_string_literal: true

class BoxComponent < ActionView::Component::Base
  validates :content, presence: true

  def initialize(classes: '')
    @classes = classes
  end

  attr_reader :classes
end
