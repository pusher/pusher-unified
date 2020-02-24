# frozen_string_literal: true

class BlockquoteComponent < ActionView::Component::Base
  def initialize(cite_name:, cite_role:)
    @cite_name = cite_name
    @cite_role = cite_role
  end
end
