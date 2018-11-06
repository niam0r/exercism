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
  def instructions(string)
    commands = []
    string.chars.each do |letter|
      case letter
      when 'A'
        commands.push(:advance)
      when 'R'
        commands.push(:turn_right)
      when 'L'
        commands.push(:turn_left)
      end
    end
    commands
  end

  def place(robot, x:, y:, direction:)
    robot.at(x, y)
    robot.orient(direction)
  end

  def evaluate(robot, str_instructions)
    instructions(str_instructions).each do |command|
      robot.send(command)
    end
  end
end
