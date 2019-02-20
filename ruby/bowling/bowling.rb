require_relative 'frame'
require 'pry'

class Game
  class BowlingError < StandardError; end
  class RollError < BowlingError; end
  class GameError < BowlingError; end

  def initialize
    @frames = []
    @previous_roll_count = nil
  end

  def roll(pins_down)
    # called each time the player rolls a ball.
    # The argument is the number of pins knocked down.

    raise BowlingError if pins_down > 10 || pins_down < 0 || @frames.count == 10

    # it's a strike
    if pins_down == 10
      @frames << Frame.new(10, 0, strike: true)
    # it's the first roll of a frame
    elsif @previous_roll_count.nil?
      @previous_roll_count = pins_down
    # it's the second roll of a frame
    else
      raise BowlingError if (@previous_roll_count + pins_down) > 10
      # check if this second roll is a spare
      spare = (10 - @previous_roll_count - pins_down) == 0
      @frames << Frame.new(@previous_roll_count, pins_down, spare: spare)
      @previous_roll_count = nil
    end

  end

  def score
    # called only at the very end of the game.
    # It returns the total score for that game.
    # binding.pry
    raise BowlingError if @frames.empty? || @frames.length != 10
    0
  end
end

# game = Game.new
# rolls = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
# rolls.each { |pins| game.roll(pins) }
# game.score
