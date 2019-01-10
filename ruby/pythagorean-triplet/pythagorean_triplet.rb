class Triplet
  def initialize(a, b ,c)
    @a, @b, @c = a, b, c
  end

  def sum
    @a + @b + @c
  end

  def product
    @a * @b * @c
  end


  def pythagorean?
    @a ** 2 + @b ** 2 == @c ** 2
  end
end
