class Report # :nodoc:
  def initialize(teams)
    @teams = teams
  end

  def sort_teams
    @teams.values.sort_by { |team| [-team.points, team.name] }
  end

  def to_data(team)
    [team.name, team.matches_played, team.won, team.drawn, team.lost, team.points].map(&:to_s)
  end

  def print_line(data)
    "%-31s| %-2s|  %s |  %s |  %s |  %s " % [*data]
  end

  def print_report
    headers = %w[Team MP W D L P]
    report = []
    report << print_line(headers)
    sort_teams.map { |team| report << print_line(to_data(team)) }
    report.join("\n")
  end
end
