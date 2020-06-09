class SpaceAge
  SECONDS_PER_EARTH_YEAR = 31557600.0
  MERCURY_EARTH_YEARS = 0.2408467
  VENUS_EARTH_YEARS = 0.61519726
  MARS_EARTH_YEARS = 1.8808158
  JUPITER_EARTH_YEARS = 11.862615
  SATURN_EARTH_YEARS = 29.447498
  URANUS_EARTH_YEARS = 84.016846
  NEPTUNE_EARTH_YEARS = 164.79132

  def initialize age_in_seconds
    @age_in_seconds = age_in_seconds
  end

  def on_earth
    @age_in_seconds / SECONDS_PER_EARTH_YEAR
  end

  def on_mercury
    on_earth / MERCURY_EARTH_YEARS
  end

  def on_venus
    on_earth / VENUS_EARTH_YEARS
  end

  def on_mars
    on_earth / MARS_EARTH_YEARS
  end

  def on_jupiter
    on_earth / JUPITER_EARTH_YEARS
  end

  def on_saturn
    on_earth / SATURN_EARTH_YEARS
  end

  def on_uranus
    on_earth / URANUS_EARTH_YEARS
  end

  def on_neptune
    on_earth / NEPTUNE_EARTH_YEARS
  end
end
