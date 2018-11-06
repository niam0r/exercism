class Robot
  attr_reader :bearing
  DIRECTIONS = [:east, :west, :north, :south]

  def orient(bearing)
    raise ArgumentError if !DIRECTIONS.include?(bearing)
    @bearing = bearing
  end

end
