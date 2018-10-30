class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores.last
  end

  def highest
    @scores.max
  end

  def top
    @scores.max(3)
  end

  def report
    if latest == highest
      "Your latest score was #{latest}. That's your personal best!"
    elsif latest < highest
      "Your latest score was #{latest}. That's #{highest - latest} short of your personal best!"
    end
  end
end
