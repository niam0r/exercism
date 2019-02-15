require_relative 'team'

class Teams
  def initialize
    @all = {}
  end

  def find(team_name)
    if @all[team_name]
      @all[team_name]
    else
      @all[team_name] = Team.new(team_name)
    end
  end
end
