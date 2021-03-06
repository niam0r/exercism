class Team # :nodoc:
  attr_reader :name, :won, :drawn, :lost
  def initialize(name)
    @name = name
    @won = 0
    @drawn = 0
    @lost = 0
  end

  def win!
    @won += 1
  end

  def draw!
    @drawn += 1
  end

  def loose!
    @lost += 1
  end

  def matches_played
    @won + @drawn + @lost
  end

  def points
    @won * 3 + @drawn
  end
end
