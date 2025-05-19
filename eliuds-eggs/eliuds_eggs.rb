class EliudsEggs
  def self.egg_count(number)
    binary_number = number.to_s(2)
   binary_number.count('1')
  end
end