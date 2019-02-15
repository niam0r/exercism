require_relative 'teams'

class Tournament
  @teams = Teams.new
  @first_line = "Team                           | MP |  W |  D |  L |  P\n"

  def self.tally(input)
    return @first_line if input == "\n"
    input.split('\n').each { |line| parse_line(line)}

    print_tally(@teams.sorted_teams)
  end

  private

  def self.parse_line(line)
    # Allegoric Alaskans;Blithering Badgers;win
    first_team = @teams.find(line.split(';').first)
    secong_team = @teams.find(line.split(';')[2])
    result = line.split(';').last

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

  def self.print_tally(teams)
    @first_line
    teams.each { |team| team.print_line } unless teams.empty?
  end
end
