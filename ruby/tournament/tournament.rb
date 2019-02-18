require_relative 'team'

class Tournament
  def initialize(input)
    @teams = {}
    input.split('\n').each { |line| parse_line(line)}
  end

  def self.tally(input)
    first_line = "Team                           | MP |  W |  D |  L |  P\n"
    return first_line if input == "\n"

    tournament = Tournament.new(input)

    sorted_teams_lines = tournament.sort.map { |team| team.print_line }.join('')

    first_line + sorted_teams_lines
  end


  def parse_line(line)
    first_team = find_or_create(line.split(';').first)
    secong_team = find_or_create(line.split(';')[1])
    result = line.split(';').last.strip

    case result
    when 'win'
      first_team.win
      secong_team.loose
    when 'loss'
      first_team.loose
      secong_team.win
    when 'draw'
      first_team.draw
      secong_team.draw
    end
  end

  def find_or_create(team_name)
    if @teams[team_name]
      @teams[team_name]
    else
      @teams[team_name] = Team.new(team_name)
    end
  end

  def sort
    @teams.values.sort_by(&:points).reverse
  end
end
