class Triangle
  def initialize(arr)
    @x, @y, @z = arr.sort!
  end

  def equilateral?
    valid? && @x == @y && @y == @z
  end

  def isosceles?
    valid? && @x == @y || @y == @z
  end

  def scalene?
    valid? && @x != @y && @y != @z && @x != @z
  end

  def valid?
    @x + @y > @z
  end
end
