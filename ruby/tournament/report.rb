class Report # :nodoc:
  def self.to_data(team)
    # [@name.ljust(31), matches_played, @won, @drawn, @lost, points].map(&:to_s)
    "#{@name.ljust(31)}|  #{matches_played} |  #{@won} |  #{@drawn} |  #{@lost} |  #{points}\n"
  end

  def self.print_line(data)
    "%<name.ljust(31)>s| %s | %s | %s | %s |  %s" % [*data]
    "%s%31| %s | %s | %s | %s | %s " % [*data]
  end
end
