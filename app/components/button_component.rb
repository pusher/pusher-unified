# frozen_string_literal: true

class ButtonComponent < ActionView::Component::Base
  validates :content, presence: true

  def initialize(
    color: 'dragonfruit',
    id: nil,
    type: 'button',
    classes: '',
    size: 'large',
    with_icon: false,
    style: 'fill',
    bold: true,
    attributes: {}
  )
    fill_classes = %W[sans-serif
                      f7
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
                      active-b--#{color}-dark
                      pointer]
    outline_classes = %w[sans-serif
                         f7
                         tc
                         h2
                         nowrap
                         bg-white
                         hover-bg-snow
                         focus-bg-snow
                         active-bg-snow-dark
                         ba
                         br2
                         b--smoke
                         focus-b--starflower-light
                         hover-b--smoke-light
                         active-b--smoke-dark
                         pointer]

    base_classes = style == 'fill' ? fill_classes : outline_classes
    all_classes = base_classes
    all_classes << %w[black] if color == 'snow' || style == 'outline'
    all_classes << %w[white] if color != 'snow' && style == 'fill'
    all_classes << %w[pv2 ph4] if size == 'large'
    all_classes << %w[pv1 ph2] if size == 'small'
    all_classes << %w[flex items-center justify-center] if with_icon
    all_classes << %w[fw6] if bold
    all_classes << %w[fw5] unless bold
    all_classes << classes unless classes.nil?

    @id = id unless id.nil?
    @type = type
    @classes = all_classes.join(' ')
    @attributes = attributes unless attributes.nil?
  end
end
