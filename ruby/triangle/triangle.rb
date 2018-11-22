class Triangle
  def initialize(arr)
    @x, @y, @z = arr.sort!
  end

  def equilateral?
    @x == @y && @y == @z
  end

end
