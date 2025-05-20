class Acronym
  def self.abbreviate(str)
   str = str.gsub("-", " ").split
   fist_latters = ""
   str.each do |word|
    fist_latters += word[0].upcase
   end
    fist_latters
  end
end

Acronym.abbreviate("Portable Network Graphics")
