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

  def at(x, y)
    @x = x
    @y = y
  end

  def coordinates
    [@x, @y]
  end

  def advance
    case @bearing
    when :north
      @y += 1
    when :east
      @x += 1
    when :south
      @y -= 1
    when :west
      @x -= 1
    end
  end

end
