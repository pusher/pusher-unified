# frozen_string_literal: true

class ButtonComponent < ActionView::Component::Base
  validates :content, presence: true

  def initialize(
    color: 'dragonfruit',
    id: nil,
    type: 'button',
    classes: '',
    size: 'large',
    icon: nil
  )
    base_classes = %W[sans-serif
                      f7
                      fw6
                      white
                      tc
                      nowrap
                      bg-#{color}
                      hover-bg-#{color}-light
                      focus-bg-#{color}-light
                      active-bg-#{color}-dark
                      ba
                      bw1
                      br2
                      b--#{color}
                      focus-b--#{color}-light
                      hover-b--#{color}-light
                      active-b--#{color}-dark]
    all_classes = base_classes
    all_classes << %w[pv2 ph4] if size == 'large'
    all_classes << %w[pv1 ph3] if size == 'small'
    all_classes << %w[flex items-center justify-center] unless icon.nil?
    all_classes << classes unless classes.nil?

    @id = id unless id.nil?
    @type = type
    @classes = all_classes.join(' ')
    @icon = icon unless icon.nil?
  end
end
