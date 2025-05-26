class Integer

  def to_roman
    n = self
    roman_numerals = {
       1000 => 'M',
       900 => 'CM',
       500 => 'D',
       400 => 'CD',
       100 => 'C',
       90 => 'XC',
       50 => 'L',
       40 => 'XL',
       10 => 'X',
       9 => 'IX',
       5 => 'V',
       4 => 'IV',
       1 => 'I'
     }

     result = ""
     roman_numerals.each do |value, roman_name|
       while n >= value
         result += roman_name
         n -= value
       end
     end
     result
  end
end


# | M    | D   | C   | L   | X   | V   | I   |
# | ---- | --- | --- | --- | --- | --- | --- |
# | 1000 | 500 | 100 | 50  | 10  | 5   | 1   |