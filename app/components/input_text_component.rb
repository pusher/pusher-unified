# frozen_string_literal: false

class InputTextComponent < ActionView::Component::Base
  def initialize(id:,
                 type: 'text',
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
    all_input_classes = %w[sans-serif
                           black
                           f7
                           input-reset
                           br2
                           ba
                           b--silver
                           hover-b--slate
                           focus-b--starflower
                           focus-bs-starflower
                           pa3
                           lh-solid
                           w-100]
    all_input_classes << input_classes unless input_classes.nil?
    if has_error
      all_input_classes << %w[b--radish
                              focus-b--radish
                              hover-b--radish
                              focus-bs-radish
                              error]
    end

    aria_described_by ||= ''
    aria_described_by << error_id if has_error

    @id = id
    @name = name
    @value = value
    @type = type
    @label = label
    @placeholder = placeholder
    @autofocus = autofocus
    @required = required
    @readonly = readonly
    @container_classes = container_classes
    @classes = all_input_classes
    @label_classes = label_classes
    @error = error
    @error_id = error_id
    @has_error = has_error
    @aria_described_by = aria_described_by
  end
end
