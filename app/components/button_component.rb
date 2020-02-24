# frozen_string_literal: false

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
    # Trailing space in string below important
    default_classes = "bg-#{color} hover-bg-#{color}-light focus-bg-#{color}-light active-bg-#{color}-dark br2 white tc sans-serif f7 fw6 ba bw1 b--#{color} focus-b--#{color}-light hover-b--#{color}-light active-b--#{color}-dark nowrap "
    all_classes = default_classes
    all_classes << 'pv2 ph4 ' if size == 'large'
    all_classes << 'pv1 ph3 ' if size == 'small'
    all_classes << classes unless classes.nil?
    all_classes << ' flex items-center justify-center' unless icon.nil?

    @id = id unless id.nil?
    @type = type
    @classes = all_classes
    @icon = icon unless icon.nil?
  end
end
