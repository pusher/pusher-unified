# frozen_string_literal: true

require 'test_helper'

class IconComponentTest < ActionView::Component::TestCase
  test 'Icon component should have title' do
    icon = render_inline(IconComponent.new(name: 'caret-down', title: 'Icon'))
    assert_equal(
      'Icon',
      icon.css('title').text
    )
  end

  test 'Icon title id and aria-labelledby should be equal' do
    icon = render_inline(IconComponent.new(name: 'caret-down', title: 'Icon'))
    assert_equal(
      icon.css('title').attr('id').text,
      icon.css('svg').attr('aria-labelledby').text
    )
  end

  test 'Icon should have role="img"' do
    icon = render_inline(IconComponent.new(name: 'caret-down', title: 'Icon'))
    assert_equal(
      icon.css('svg').attr('role').text,
      'img'
    )
  end

  test 'Icon should used passed size' do
    icon = render_inline(IconComponent.new(name: 'caret-down', title: 'Icon', size: 64))
    assert_equal(
      icon.css('svg').attr('width').text,
      '64'
    )
    assert_equal(
      icon.css('svg').attr('height').text,
      '64'
    )
  end

  test 'Icon should used passed class' do
    icon = render_inline(IconComponent.new(name: 'caret-down', title: 'Icon', classes: 'extra'))
    assert_equal(
      icon.css('svg').attr('class').text,
      'extra'
    )
  end
end
