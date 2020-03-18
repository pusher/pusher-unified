class IconButtonComponent < ActionView::Component::Base
  include ApplicationHelper

  def initialize(icon_name:, icon_title:, style: 'light', icon_classes: '', classes: '')
    base_classes = %w[pa2
                      bn
                      focus-b--starflower-light
                      hover-b--smoke-light
                      active-b--smoke-dark
                      pointer]

    all_classes = base_classes
    all_classes << %w[bg-white black hover-slate focus-bg-snow] if style == 'light'
    all_classes << %w[bg-black silver hover-smoke focus-bg-snow focus-black] if style == 'dark'
    all_classes << classes unless classes.nil?

    base_icon_classes = %w[db]
    all_icon_classes = base_icon_classes
    all_icon_classes << icon_classes unless icon_classes.nil?

    @icon_name = icon_name
    @icon_title = icon_title
    @style = style
    @icon_classes = all_icon_classes.join(' ')
    @classes = all_classes.join(' ')
  end
end
