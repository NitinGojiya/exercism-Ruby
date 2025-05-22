module ArmstrongNumbers
  def self.include?(number)
    temp = number
    rem = 0 #initialize with number
    sum = 0
    len = number.digits.length # store digit of number
    while number > 0
      rem = number % 10 # save one last digit
      sum += rem ** len # power od digit
      number /= 10
   end
    temp == sum || false
  end
end
