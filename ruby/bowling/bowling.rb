class Game
  def initialize
    @rolls = []
    @num_of_rolls = @rolls.length
  end

  def roll(pins)
    # called each time the player rolls a ball.
    # The argument is the number of pins knocked down.

  end

  def score
    # called only at the very end of the game.
    # It returns the total score for that game.
    @rolls.values.map(&:sum).sum
  end
end

class Frame
  attr_reader :first, :second
  def initialize(first, second)
    @first = first
    @second = second
    @strike = false
    @spare = false
  end
end
