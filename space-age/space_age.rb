class SpaceAge
  def initialize(space_age_sec)
    @space_age_sec = space_age_sec
  end

  def on_earth
    age = @space_age_sec / 31557600.00
    age.round(2)
  end

  def on_mercury
    age = @space_age_sec / (31557600.00 * 0.2408467)
    age.round(2)
  end

  def on_venus
    age = @space_age_sec / (31557600.00 * 0.61519726)
    age.round(2)
  end

  def on_mars
    age = @space_age_sec / (31557600.00 * 1.8808158)
    age.round(2)
  end

  def on_jupiter
    age = @space_age_sec / (31557600.00 * 11.862615)
    age.round(2)
  end

  def on_saturn
    age = @space_age_sec / (31557600.00 * 29.447498)
    age.round(2)
  end

  def on_uranus
    age = @space_age_sec / (31557600.00 * 84.016846)
    age.round(2)
  end

  def on_neptune
    age = @space_age_sec / (31557600.00 * 164.79132)
    age.round(2)
  end

end

# age = SpaceAge.new(2134835688)
# age.on_mercury