class ResistorColorDuo
  def self.value(color_array)
    color_code_hash = {
      'black' => 0,
      'brown' => 1,
      'red' => 2,
      'orange' => 3,
      'yellow' => 4,
      'green' => 5,
      'blue' => 6,
      'violet' => 7,
      'grey' => 8,
      'white' => 9,
    }
    color1, color2 = color_array
    result = [color_code_hash.values_at(color1), color_code_hash.values_at(color2)].flatten
    out_result = 0
    result.each { |code| out_result = (out_result * 10) + code }
    out_result
  end
end

# colors = ['brown' , 'black']
#  ResistorColorDuo.value(colors)
