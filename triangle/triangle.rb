class Triangle

  def initialize(tringle_size)
    @a, @b, @c = tringle_size
    # a, b, c = tringle_size
  end
  def equilateral?
    return false if @a == 0 && @b == 0 && @c == 0
    if @a == @b && @b == @c && @c == @a
      true
    else
      false
    end
  end
  def isosceles?
    return false if @a == 0 && @b == 0 && @c == 0
    if @a + @b >= @c && @b + @c >= @a && @a + @c >= @b
     if @a == @b || @b == @c || @c == @a
       true
     end

    else
      false
    end
  end
  def scalene?
    return false if @a == 0 && @b == 0 && @c == 0
    if @a + @b >= @c && @b + @c >= @a && @a + @c >= @b
     if @a != @b && @b != @c && @c != @a
       true
     end
    else
      false
    end
  end
end

