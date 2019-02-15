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
      first_team.W += 1
      secong_team.L += 1
    when 'lost'
      first_team.L += 1
      secong_team.W += 1
    end


    teams.each do |team|
      team.MP += 1
      team.calculate_points
    end
  end
end
