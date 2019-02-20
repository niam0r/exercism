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
    # raise BowlingError if @frames.count == 10 unless @frames.last.spare?
    # raise BowlingError if @frames.count == 10 unless @frames.last.strike?

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
      spare = ((10 - @previous_roll_count - pins_down) == 0)
      @frames << Frame.new(@previous_roll_count, pins_down, false, spare)
      @previous_roll_count = nil
    end

  end

  def score
    # called only at the very end of the game.
    # It returns the total score for that game.
    # binding.pry
    raise BowlingError if @frames.empty? || @frames.length != 10

    total = 0
    @frames.each_with_index do |frame, i|
      if frame.strike?
        # total += (10 + @frames[i+1].first + @frames[i+1].first)
        # need to implement case wher next frame is a strike
        # need to implement case wher next frame is a spare
      elsif frame.spare?
        total += (10 + @frames[i+1].first)
      else
        total += (frame.first + frame.second)
      end
    end

    # if @frames.last.spare?

    # end


    total
  end
end

# game = Game.new
# rolls = [3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6]
# rolls.each { |pins| game.roll(pins) }
# game.score
