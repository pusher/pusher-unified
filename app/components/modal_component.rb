# frozen_string_literal: true

class ModalComponent < ActionView::Component::Base
  include ApplicationHelper
  validates :content, presence: true
  # enum modal_type: %i[add edit delete]

  def initialize(id:, title:, action_text:, modal_type:)
    @id = id
    @title = title
    @title_id = "modal-title-#{SecureRandom.hex(4)}"
    @modal_type = modal_type
    @action_text = action_text
    @action_button_colour = modal_type == 'delete' ? 'radish' : 'dragonfruit'
  end
end
