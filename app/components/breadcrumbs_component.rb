# frozen_string_literal: true

class BreadcrumbsComponent < ActionView::Component::Base
  include ApplicationHelper
  def initialize(logo: false, product: nil, links:)
    all_products = [
      {
        id: 'channels',
        label: 'Channels',
        href: '/channels'
      },
      {
        id: 'chatkit',
        label: 'Chatkit',
        href: '/chatkit'
      },
      {
        id: 'beams',
        label: 'Beams',
        href: '/beams'
      }
    ]

    filtered_products = []
    all_products.each do |item|
      filtered_products << item if item[:id] != product
    end

    @logo = logo
    @product = product.capitalize unless product.nil?
    @links = links
    @all_products = filtered_products
  end
end
