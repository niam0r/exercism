class Team # :nodoc:
  attr_reader :name, :MP, :W, :D, :L, :points
  def initialize(name)
    @name = name
    @MP = 0
    @W = 0
    @D = 0
    @L = 0
    @points = 0
  end

  def win!
    @MP += 1
    @W += 1
    @points += 3
  end

  def draw!
    @MP += 1
    @D += 1
    @points += 1
  end

  def loose!
    @MP += 1
    @L += 1
  end

  def print_line
    "#{@name.ljust(31)}|  #{@MP} |  #{@W} |  #{@D} |  #{@L} |  #{@points}\n"
  end
end
