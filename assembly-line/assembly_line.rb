class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    p_per_hour = 221
    if @speed <= 4 && @speed >= 1
      f = @speed * p_per_hour
      f.to_f
    elsif @speed <= 8 && @speed >= 5
      f = @speed * p_per_hour
      f.to_f * 90 / 100
    elsif @speed == 9
      f = @speed * p_per_hour
      f.to_f * 80 / 100
    elsif @speed == 10
      f = @speed * p_per_hour
      f.to_f * 77 / 100
    else

    end
  end

  def working_items_per_minute
    p_per_m = 221 / 60.0

    if @speed <= 4 && @speed >= 1
      f = @speed * p_per_m
      f.floor
    elsif @speed <= 8 && @speed >= 5
      f = @speed * p_per_m
      work=f * 90 / 100
      work.floor
    elsif @speed == 9
      f = @speed * p_per_m
      work=f * 80 / 100
      work.floor
    elsif @speed == 10
      f = @speed * p_per_m
      work=f * 77 / 100
      work.floor
    else

    end
  end
end

asline = AssemblyLine.new(5)

puts asline.production_rate_per_hour
puts asline.working_items_per_minute
