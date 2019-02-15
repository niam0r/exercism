class Team
  attr_reader :name, :MP, :W, :D, :L, :points
  def initialize(name, matches_played = 0, matches_won = 0, matches_drawn = 0, matches_lost = 0, points = 0)
    @name = name
    @MP = matches_played
    @W = matches_won
    @D = matches_drawn
    @L = matches_lost
    @points = points
  end

  def print_line
    "#{@name}             |  #{@MP} |  #{@W} |  #{@D} |  #{@L} |  #{@points}\n"
  end

  def win
    @MP += 1
    @W += 1
    @points += 3
  end

  def draw
    @MP += 1
    @D += 1
    @points += 1
  end

  def loose
    @MP += 1
    @L += 1
  end
end
