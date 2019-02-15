require_relative 'teams'

class Tournament
  @teams = Teams.new

  def self.tally(input)
    first_line = "Team                           | MP |  W |  D |  L |  P\n"
    return first_line if input == "\n"

    input.split('\n').each { |line| parse_line(line)}

    sorted_teams_lines = @teams.sorted_teams.map { |team| team.print_line }.join('')

    first_line + sorted_teams_lines
  end

  private

  def self.parse_line(line)
    first_team = @teams.find(line.split(';').first)
    secong_team = @teams.find(line.split(';')[1])
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
end
