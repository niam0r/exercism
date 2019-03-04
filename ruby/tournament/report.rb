class Report # :nodoc:
  def self.to_data(team)
    [team.name, team.matches_played, team.won, team.drawn, team.lost, team.points].map(&:to_s)
  end

  def self.print_line(data)
    "%-31s| %s | %s | %s | %s | %s " % [*data]
  end
end
