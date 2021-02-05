class SpaceAge
  def initialize(seconds) =
    @seconds = seconds

  def on_earth =
    @seconds / (365.25 * 86_400)

  TABLE = {
    Mercury: 0.2408467,
    Venus: 0.61519726,
    Mars: 1.8808158,
    Jupiter: 11.862615,
    Saturn: 29.447498,
    Uranus: 84.016846,
    Neptune: 164.79132
  }

  TABLE.each_pair do |pl, ey|
    define_method("on_#{pl.downcase}") do
      on_earth / ey
    end
  end
end
