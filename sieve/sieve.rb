class Sieve
  def initialize(end_range)
    @end_range = end_range
  end
  def primes
    result =[]
    (1..@end_range).each do |number|
      cnt = 0
      (1..number).each do |number2|
        cnt +=1 if number % number2 == 0
      end
      result << number if cnt == 2
    end
    result
  end
end

