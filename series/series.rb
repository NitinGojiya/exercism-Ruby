class Series

  def initialize(numbers)
    raise ArgumentError, 'not valid empty' if numbers.empty?

    @numbers = numbers
  end

  def slices(length)
    raise ArgumentError, 'length cannot be zero' if length.zero?
    raise ArgumentError, 'length cannot be negative' if length.negative?
    raise ArgumentError, 'length cannot be greater than series length' if length > @numbers.length

    result = []
    (0..@numbers.length - length).each do |index|
      result << @numbers[index, length]
    end
    result
  end
end
