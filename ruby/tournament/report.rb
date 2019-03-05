class Report # :nodoc:
  def initialize(teams)
    @teams = teams
  end

  def self.to_data(team)
    [team.name, team.matches_played, team.won, team.drawn, team.lost, team.points].map(&:to_s)
  end

  def self.print_line(data)
    "%-31s| %s | %s | %s | %s | %s " % [*data]
  end

  def print_report
    headers = %w(Team MP W D L P)
    print_line(headers) + "\n" + @teams.map do |team|
      print_line(to_data(team))
    end
  end
end
