class Team
  attr_reader :name, :MP, :W, :D, :L, :points
  def initialize(name, matches_played = 0, matches_won = 0, matches_drawn = 0, matches_lost = 0, points = 0)
    @name = name
    @MP = matches_played
    @W = matches_won
    @D = matches_drawn
    @L = matches_lost
    @points = calculate_points
  end

  private

  def calculate_points
    # A win earns 3 points. A draw earns 1. A loss earns 0
    @W * 3 + @D
  end
end
