require_relative 'teams'

class Tournament
  @teams = Teams.new
  @tally = ["Team                           | MP |  W |  D |  L |  P\n"]

  def self.tally(input)
    return @tally.first if input == "\n"

    input.split('\n').each { |line| parse_line(line)}

    print_tally(@teams.sorted_teams)
  end

  private

  def self.parse_line(line)
    # Allegoric Alaskans;Blithering Badgers;win
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

  def self.print_tally(teams)
    @tally << teams.map { |team| team.print_line }# unless teams.empty?
    puts @tally
    @tally.join("\n")
  end
end


# input = <<-INPUT.gsub(/^ */, '')
#     Allegoric Alaskans;Blithering Badgers;win
#     INPUT

# Tournament.tally(input)
