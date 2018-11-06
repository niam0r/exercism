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

class Simulator
  COMMANDS = { 'L' => :turn_left, 'R' => :turn_right, 'A' => :advance }

  def instructions(commands_str)
    commands_str.chars.map { |cmd| COMMANDS[cmd] }
  end

  def place(robot, x:, y:, direction:)
    robot.at(x, y)
    robot.orient(direction)
  end

  def evaluate(robot, commands_str)
    instructions(commands_str).each { |cmd| robot.send(cmd) }
  end
end
