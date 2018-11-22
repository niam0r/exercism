class Triangle
  def initialize(arr)
    @x, @y, @z = arr.sort!
  end

  def equilateral?
    valid? && @x == @y && @y == @z && @x > 0
  end

  def isosceles?
    valid? && @x == @y || @y == @z || @x == @z
  end

  def scalene?
    @x != @y && @y != @z && @x != @z && valid?
  end

  def valid?
    @x + @y > @z
  end
end
