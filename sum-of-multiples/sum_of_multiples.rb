class SumOfMultiples
  def initialize(*value1)
    @value1 = value1
  end

  def to(number)
    generated_ar =[]
    @value1.each do |x|
      (1..number).each do |y|
        generated_ar << x * y
      end
    end
    generated_ar.select! { |x| x < number }
    sum = generated_ar.uniq.sort.sum
  end
end

