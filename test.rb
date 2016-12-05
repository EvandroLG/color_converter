require 'test/unit'
require_relative 'lib/color_converter'

class ColorTest < Test::Unit::TestCase

  def verify_hex_to_rgb hex
    result = ColorConverter.hex_to_rgb hex

    assert_equal Hash, result.class
    assert_equal 255, result[:r]
    assert_equal 255, result[:g]
    assert_equal 255, result[:b]
  end

  test 'convert from hexadecimal to rgb' do
    verify_hex_to_rgb 'FFFFFF'
  end

  test 'convert from hexadecimal to rgb when receive parameter with "#"' do
    verify_hex_to_rgb '#FFFFFF'
  end

  test 'convert from rgb to hexadecimal' do
    result = ColorConverter.rgb_to_hex({ r: 255, g: 255, b: 255 })
    assert_equal '#FFFFFF', result
  end
end
