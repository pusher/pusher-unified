# frozen_string_literal: false

class InputCheckboxComponent < ActionView::Component::Base
  def initialize(id:,
                 name: id,
                 value: '',
                 label: nil,
                 placeholder: nil,
                 autofocus: nil,
                 required: false,
                 readonly: false,
                 container_classes: nil,
                 label_classes: nil,
                 input_classes: nil,
                 error: nil,
                 error_id: "error-#{SecureRandom.hex(4)}",
                 has_error: !error.nil?)
    all_input_classes = %w[checkbox clip]
    all_input_classes << input_classes unless input_classes.nil?

    all_label_classes = %w[checkbox-label]
    all_label_classes << label_classes unless label_classes.nil?
    all_label_classes << %w[error] if has_error

    aria_described_by ||= ''
    aria_described_by << error_id if has_error

    @id = id
    @name = name
    @value = value
    @label = label
    @placeholder = placeholder
    @autofocus = autofocus
    @required = required
    @readonly = readonly
    @container_classes = container_classes
    @classes = all_input_classes
    @label_classes = all_label_classes
    @error = error
    @error_id = error_id
    @has_error = has_error
    @aria_described_by = aria_described_by
  end
end
