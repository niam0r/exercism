require_relative 'team'
require_relative 'report'

class Tournament # :nodoc:
  attr_reader :teams
  def initialize(input)
    @teams = Hash.new { |h, k| h[k] = Team.new(k) }
    input.each_line { |line| parse_line(line) }
  end

  def self.tally(input)
    tournament = Tournament.new(input)

    Report.new(tournament.teams).print_report
  end

  def parse_line(line)
    split_line = line.split(';').map(&:strip)

    first_team_name, second_team_name, result = split_line

    first_team = @teams[first_team_name]
    second_team = @teams[second_team_name]

    score(first_team, second_team, result)
  end

  def score(first_team, second_team, result)
    if result == 'win'
      first_team.win!
      second_team.loose!
    elsif result == 'loss'
      first_team.loose!
      second_team.win!
    elsif result == 'draw'
      first_team.draw!
      second_team.draw!
    end
  end
end

# puts <<-TALLY.gsub(/^ */, '')
#     Team                           | MP |  W |  D |  L |  P
#     Allegoric Alaskans             |  3 |  2 |  1 |  0 |  7
#     Courageous Californians        |  3 |  2 |  1 |  0 |  7
#     Blithering Badgers             |  3 |  0 |  1 |  2 |  1
#     Devastating Donkeys            |  3 |  0 |  1 |  2 |  1
#     TALLY

# input = <<-INPUT.gsub(/^ */, '')
#     Courageous Californians;Devastating Donkeys;win
#     Allegoric Alaskans;Blithering Badgers;win
#     Devastating Donkeys;Allegoric Alaskans;loss
#     Courageous Californians;Blithering Badgers;win
#     Blithering Badgers;Devastating Donkeys;draw
#     Allegoric Alaskans;Courageous Californians;draw
#     INPUT

# puts Tournament.tally(input)

# puts <<-TALLY.gsub(/^ */, '')
#     Team                           | MP |  W |  D |  L |  P
#     TALLY
# puts Tournament.tally('')
