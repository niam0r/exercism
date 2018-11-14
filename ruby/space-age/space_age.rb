class SpaceAge
  attr_reader :on_earth, :on_venus

  def initialize(seconds)
    @seconds = seconds
    @on_earth = (seconds / 31557600.00)
    @on_venus = (@on_earth / 0.61519726)
  end
end
