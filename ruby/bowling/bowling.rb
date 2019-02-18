class Game

  class BowlingError < StandardError; end
  class RollError < BowlingError; end
  class GameError < BowlingError; end

  def initialize
    @frames = []
    @previous_roll = nil
  end

  def roll(pins_down)
    # called each time the player rolls a ball.
    # The argument is the number of pins knocked down.

    raise BowlingError if pins_down > 10

    if pins_down == 10
      @frames < Frame.new(10, 0, strike: true)
    elsif @previous_roll.nil?
      # check logic
      @previous_roll = pins_down
    else
      spare = (10 - @previous_roll - pins_down) == 0
      @frames < Frame.new(@previous_roll, pins_down, spare: spare)
      @previous_roll = nil
    end

  end

  def score
    # called only at the very end of the game.
    # It returns the total score for that game.

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

