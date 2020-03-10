# frozen_string_literal: true

class BlockquoteComponent < ActionView::Component::Base
  validates :content, presence: true
  def initialize(cite_name: nil, cite_role: nil)
    @cite_name = cite_name
    @cite_role = cite_role
  end
end
