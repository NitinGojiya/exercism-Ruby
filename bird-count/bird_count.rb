class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
   @birds_per_day[@birds_per_day.length - 2]
  end

  def total
    @birds_per_day.sum
  end

  def busy_days
   days = @birds_per_day.select { |x| x >= 5 }
   days.size
  end

  def day_without_birds?
   @birds_per_day.any? {|x| x==0 }
  end
end

birds_per_day = [2, 5, 0, 7, 4, 1]
bird_count = BirdCount.new(birds_per_day)
bird_count.day_without_birds?