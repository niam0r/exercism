class Game
  def initialize
    @rolls = []
    @num_of_rolls = @rolls.length
    @previous_roll = false # spare, strike or nothing special
  end

  def roll(pins)
    # called each time the player rolls a ball.
    # The argument is the number of pins knocked down.
  end

  def score
    # called only at the very end of the game.
    # It returns the total score for that game.

  end
end
