# frozen_string_literal: true

class BoxComponent < ActionView::Component::Base
  validates :content, presence: true

  def initialize(classes: nil, dashed: false, padding: 'large')
    base_classes = %w[ba]
    all_classes = base_classes
    all_classes << 'pa5' if padding == 'large'
    all_classes << 'pv2 ph3' if padding == 'small'
    all_classes << 'b--smoke b--dashed bw1 br4' if dashed
    all_classes << 'b--smoke-light br2' unless dashed
    all_classes << classes unless classes.nil?
    @classes = all_classes.join(' ')
  end

  attr_reader :classes
end
