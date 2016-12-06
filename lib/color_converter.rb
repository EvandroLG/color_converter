# encoding: UTF-8

module ColorConverter

  def self.hex_to_rgb hex
    hex.sub! '#', ''

    if hex.size === 3
      return makes_rgb(hex[0] + hex[0], hex[1] + hex[1],
                       hex[2] + hex[2])
    end

    result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.match(hex)

    return nil if result.nil?

    makes_rgb result[1], result[2], result[3]
  end

  def self.rgb_to_hex rgb
    r = rgb[:r]
    g = rgb[:g]
    b = rgb[:b]

    "##{r.to_s(16)}#{g.to_s 16}#{b.to_s 16}".upcase
  end

  private
  def self.makes_rgb r, g, b
    {
      r: r.to_i(16),
      g: g.to_i(16),
      b: b.to_i(16)
    }
  end

end
