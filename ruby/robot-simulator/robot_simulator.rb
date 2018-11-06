class Robot
  attr_reader :bearing
  DIRECTIONS = [:north, :east, :south, :west]

  def orient(bearing)
    raise ArgumentError if !DIRECTIONS.include?(bearing)
    @bearing = bearing
  end

  def turn_right
    @bearing = DIRECTIONS[(DIRECTIONS.index(@bearing) + 1) % 4]
  end

  def turn_left
    @bearing = DIRECTIONS[(DIRECTIONS.index(@bearing) - 1) % 4]
  end
end
