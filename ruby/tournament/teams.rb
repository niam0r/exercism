require_relative 'team'

class Teams
  attr_reader :all

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

  def sorted_teams
    return [] if @all.empty?
    # puts @all
    sorted = @all.values.sort_by(&:points).reverse
    # sorted = @all.values.sort_by(&:points)
    # puts sorted
    sorted
  end
end
