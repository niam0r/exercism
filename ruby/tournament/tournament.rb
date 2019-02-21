require_relative 'team'

class Tournament # :nodoc:
  def initialize(input)
    @teams = Hash.new { |h, k| h[k] = Team.new(k) }
    input.split("\n").each { |line| parse_line(line) }
  end

  def self.tally(input)
    first_line = "Team                           | MP |  W |  D |  L |  P\n"
    return first_line if input == "\n"

    tournament = Tournament.new(input)

    first_line + tournament.sort_teams.map(&:print_line).join('')
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

  def sort_teams
    @teams.values.sort_by { |team| [-team.points, team.name] }
  end
end
