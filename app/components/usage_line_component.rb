# frozen_string_literal: true

class UsageLineComponent < ActionView::Component::Base
  include ApplicationHelper
  def initialize(title:, usage:, limit:)
    @title = title
    @usage = format_big_number(usage)
    @limit = format_big_number(limit)
    @percentage = ((usage.to_f / limit.to_f) * 100).round(0)
  end
end
