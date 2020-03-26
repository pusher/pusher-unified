# frozen_string_literal: true

class BoxComponent < ActionView::Component::Base
  validates :content, presence: true

  def initialize(classes: nil, dashed: false)
    base_classes = %w[pa5 ba b--smoke-light]
    all_classes = base_classes
    all_classes << 'b--dashed bw1 br3' if dashed
    all_classes << 'br2' unless dashed
    all_classes << classes unless classes.nil?
    @classes = all_classes.join(' ')
  end

  attr_reader :classes
end
