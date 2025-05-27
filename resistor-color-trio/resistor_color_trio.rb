class ResistorColorTrio
  def initialize(colors)
    @color1, @color2, @color3 = colors
  end

  def label
    color_hash = {
      black: 0,
      brown: 1,
      red: 2,
      orange: 3,
      yellow: 4,
      green: 5,
      blue: 6,
      violet: 7,
      grey: 8,
      white: 9
    }
    result = [color_hash.values_at(:"#{@color1}"), color_hash.values_at(:"#{@color2}")].flatten
    first_two = 0
    result.each { |code| first_two = (first_two * 10) + code }
    how_zero =  [color_hash.values_at(:"#{@color3}")].flatten
    zero = (10**how_zero[0])
    out_result = first_two * zero
    "Resistor value: #{out_result >= 1000 ? out_result / 1000 : out_result} #{out_result >= 1000 ? 'kiloohms' : 'ohms'}"
  end
end