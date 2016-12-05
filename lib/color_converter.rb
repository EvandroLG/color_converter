# encoding: UTF-8

module ColorConverter
  def self.hex_to_rgb hex
    hex.sub! '#', ''
    result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.match(hex)

    return nil if result.nil?

    {
      r: result[1].to_i(16),
      g: result[2].to_i(16),
      b: result[3].to_i(16)
    }
  end

  def self.rgb_to_hex rgb
    r = rgb[:r]
    g = rgb[:g]
    b = rgb[:b]

    "##{r.to_s(16)}#{g.to_s 16}#{b.to_s 16}".upcase
  end
end
