class InputErrorLabelComponent < ActionView::Component::Base

  def initialize(id:, label:)
    @id = id
    @label = label
  end
end
