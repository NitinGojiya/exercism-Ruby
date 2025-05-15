class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40

  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    2 * layers
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    (2 * number_of_layers) + actual_minutes_in_oven
  end
end

lasagna = Lasagna.new
lasagna.remaining_minutes_in_oven(25)
lasagna.preparation_time_in_minutes(1)
lasagna.total_time_in_minutes(number_of_layers: 1, actual_minutes_in_oven: 30)
