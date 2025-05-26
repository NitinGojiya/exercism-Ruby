class SpiralMatrix

  def initialize(number)
    @number = number
  end

  def matrix
    n = @number
    num = 1
    top = 0
    bottom = n - 1
    left = 0
    right = n - 1
    mat_arr = Array.new(n) { Array.new(n) }
    while num <= n*n
      (left..right).each do |x|
        mat_arr[top][x] = num
        num += 1
      end
      top += 1
      (top..bottom).each do |x|
        mat_arr[x][right] = num
        num += 1
      end
      right -= 1

      (right.downto(left)).each do |x|
        mat_arr[bottom][x] = num
        num += 1
       end
      bottom -= 1

      (bottom.downto(top)).each do |x|
        mat_arr[x][left] = num
        num += 1
      end
      left += 1
    end
   mat_arr
    #  mat_arr.each do |x|
    #    puts x.join(' ')
    #  end
  end
end

spiralmat = SpiralMatrix.new(0)
spiralmat.matrix
