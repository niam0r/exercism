class Team # :nodoc:
  attr_reader :name, :played, :won, :drawn, :lost, :points
  def initialize(name)
    @name = name
    @played = 0
    @won = 0
    @drawn = 0
    @lost = 0
    @points = 0
  end

  def win!
    @played += 1
    @won += 1
    @points += 3
  end

  def draw!
    @played += 1
    @drawn += 1
    @points += 1
  end

  def loose!
    @played += 1
    @lost += 1
  end

  def print_line
    "#{@name.ljust(31)}|  #{@played} |  #{@won} |  #{@drawn} |  #{@lost} |  #{@points}\n"
  end
end
