class Team
  attr_reader :MP, :W, :D, :L, :points
  def initialize(matches_played = 1, matches_won = 1, matches_drawn = 1, matches_lost = 1, points = 1)
    @MP = matches_played
    @W = matches_won
    @D = matches_drawn
    @L = matches_lost
    @points = calculate_points
  end
end
