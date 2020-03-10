# frozen_string_literal: true

class BoxComponent < ActionView::Component::Base
  validates :content, presence: true

  def initialize(classes: nil)
    base_classes = %w[br2 ba b--smoke-light pa5]
    all_classes = base_classes
    all_classes << classes unless classes.nil?
    @classes = all_classes.join(' ')
  end

  attr_reader :classes
end
