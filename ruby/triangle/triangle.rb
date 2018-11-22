class Triangle
  def initialize(arr)
    @x, @y, @z = arr.sort!
  end

  def equilateral?
    @x == @y && @y == @z && @x > 0
  end

  def isosceles?
    @x == @y || @y == @z || @x == @z
  end

end
