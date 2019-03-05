require_relative 'team'
require_relative 'report'

class Tournament # :nodoc:
  attr_reader :teams
  def initialize(input)
    @teams = Hash.new { |h, k| h[k] = Team.new(k) }
    input.each_line { |line| parse_line(line) }
  end

  def self.tally(input)
    tournament = new(input)

    Report.new(tournament.teams).print_report
  end

  def parse_line(line)
    return if line == "\n"

    matchdata = line.match(/^(.*);(.*);(.*)$/)

    first_team_name, second_team_name, result = matchdata.captures

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
