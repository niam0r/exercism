require_relative 'team'

class Tournament
  def self.tally(input)
    "Team                           | MP |  W |  D |  L |  P\n"
  end

  def parse_line(line)
    # Allegoric Alaskans;Blithering Badgers;win
    first_team = Team.new(line.split(';').first)
    secong_team = Team.new(line.split(';')[2])
    result = line.split(';').last

    case result
    when 'win'
      first_team.win
      secong_team.loose
    when 'lost'
      first_team.loose
      secong_team.win
    when 'draw'
      first_team.draw
      secong_team.draw
    end
  end
end
