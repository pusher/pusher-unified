# frozen_string_literal: true

class InputLabelComponent < ActionView::Component::Base
  def initialize(html_for: nil, label: nil, classes: '')
    all_label_classes = %w[f7 mb2]
    all_label_classes << 'db' unless classes.include? 'checkbox-label'
    all_label_classes << classes unless classes.nil?

    @html_for = html_for
    @label = label
    @classes = all_label_classes.join(' ')
  end
end
