class Isogram
  def self.isogram?(input)
    letters = input.downcase.scan(/[a-z]/)
    letters.uniq == letters
  end
end
