require_relative 'team'
require 'pry'

class Tournament # :nodoc:
  attr_reader :teams
  def initialize(input)
    @teams = {}
    input.split("\n").each do |line|
      parse_line(line)
    end
  end

  def self.tally(input)
    first_line = "Team                           | MP |  W |  D |  L |  P\n"
    return first_line if input == "\n"

    tournament = Tournament.new(input)

    sorted_teams_lines = tournament.sort.map(&:print_line).join('')

    first_line + sorted_teams_lines
  end

  def parse_line(line)
    split_line = line.split(';').map(&:strip)
    first_team = find_or_create_team(split_line.first)
    second_team = find_or_create_team(split_line[1])
    result = split_line.last

    score(first_team, second_team, result)
  end

  def score(first_team, second_team, result)
    case result
    when 'win'
      first_team.win!
      second_team.loose!
    when 'loss'
      first_team.loose!
      second_team.win!
    when 'draw'
      first_team.draw!
      second_team.draw!
    end
  end

  def find_or_create_team(name)
    @teams[name] || @teams[name] = Team.new(name)
  end

  def sort
    @teams.values.sort_by { |team| [-team.points, team.name[0]] }
  end
end

input = <<-INPUT.gsub(/^ */, '')
    Allegoric Alaskans;Blithering Badgers;win
    Blithering Badgers;Courageous Californians;win
    Courageous Californians;Allegoric Alaskans;loss
    INPUT
puts Tournament.tally(input)
