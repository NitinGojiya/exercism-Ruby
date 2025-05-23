class Darts
  def initialize(a, b)
    @sum = Math.sqrt(a**2 + b**2)
  end

  def score
    case @sum
      when 0..1 then 10
      when 1..5 then 5
      when 5..10 then 1
      else 0
    end
  end
end

