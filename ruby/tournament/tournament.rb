require_relative 'team'

class Tournament # :nodoc:
  def initialize(input)
    @teams = {}
    input.split('\n').each { |line| parse_line(line) }
  end

  def self.tally(input)
    first_line = "Team                           | MP |  W |  D |  L |  P\n"
    return first_line if input == "\n"

    tournament = Tournament.new(input)
    sorted_teams_lines = tournament.sort.map(&:print_line).join('')
    # puts sorted_teams_lines
    first_line + sorted_teams_lines
  end

  def parse_line(line)
    split_line = line.split(';').map(&:strip)
    first_team = find_or_create_team(split_line.first)
    secong_team = find_or_create_team(split_line[1])
    result = split_line.last

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

  def find_or_create_team(name)
    @teams[name] || @teams[name] = Team.new(name)
  end

  def sort
    @teams.values.sort_by(&:points).reverse
  end
end

# input = <<-INPUT.gsub(/^ */, '')
#     Allegoric Alaskans;Blithering Badgers;draw
#     INPUT

# Tournament.tally(input)
