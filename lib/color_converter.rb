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
end
