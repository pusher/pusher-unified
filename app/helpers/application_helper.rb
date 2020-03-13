# frozen_string_literal: true

module ApplicationHelper
  def svg_asset(asset, options = {})
    file = File.read(Rails.root.join('app', 'assets', 'images', 'svg_store', "#{asset}.svg"))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    svg_id = "svg-#{SecureRandom.hex(4)}"

    svg['class'] = options[:class] if options[:class].present?
    svg['width'] = options[:width] if options[:width].present?
    svg['height'] = options[:height] if options[:height].present?
    svg.set_attribute('role', 'img')

    if options[:title].present?
      svg['aria-labelledby'] = svg_id
      svg.add_child("<title id=\"#{svg_id}\">#{options[:title]}</title>")
    end

    doc.to_html.html_safe
  end

  def format_big_number(number)
    if number > 999_999
      number_to_human(number, delimiter: ',')
    else
      number_with_delimiter(number, delimiter: ',')
    end
  end
end
