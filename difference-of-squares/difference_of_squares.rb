class Squares
  def initialize(range)
    @range = range
  end
  def square_of_sum
    sum = 0
    (1..@range).each do |number|
      sum += number
    end
    sum ** 2
  end
  def sum_of_squares
    sum = 0
    (1..@range).each do |number|
      sum += number ** 2
    end
  sum
  end
  def difference
    square_of_sum - sum_of_squares
  end
end