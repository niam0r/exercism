class Triplet
  attr_accessor :sum, :product
  def initialize(a, b ,c)
    @a, @b, @c = a, b, c
    @sum = @a + @b + @c
    @product = @a * @b * @c
  end

  def pythagorean?
    @a ** 2 + @b ** 2 == @c ** 2
  end
end
