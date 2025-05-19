class Raindrops
  def self.convert(number)
   string_r=""
   string_r = "Plong#{string_r}" if number % 7 == 0
   string_r = "Plang#{string_r}" if number % 5 == 0
   string_r = "Pling#{string_r}" if number % 3 == 0
   string_r.empty? ? number.to_s : string_r
  end
end

 puts Raindrops.convert(35)