class Prime
  def self.nth(nth_number)
    raise ArgumentError, "Input positive " unless nth_number.positive? && nth_number.is_a?(Integer)

    primes = []
    number = 2
    while primes.length < nth_number
      primes << number if self.prime?(number)
      number += 1
    end

    primes[nth_number - 1]
  end

  def self.prime?(number)
    return false if number < 2
    (2..Math.sqrt(number)).none? { |i| number % i == 0 }
  end
end

# puts Prime.nth(6)
