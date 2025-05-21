class ResistorColor
  COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey","white"]
  def self.color_code(input)

    COLORS.each_with_index do |value, index|
    @@n= index if value == input

    end
    return @@n
  end
end

#  ResistorColor.color_code("red")