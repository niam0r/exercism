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

  private

  def win
    @points += 3
    @MP += 1
  end

  def draw
    @points += 1
    @MP += 1
  end

  def loose
    @MP += 1
  end

  def print_line
    # Devastating Donkeys            |  3 |  2 |  1 |  0 |  7
    "#{@name}            |  #{@MP} |  #{@W} |  #{@D} |  #{@L} |  #{@points}"
  end
end
