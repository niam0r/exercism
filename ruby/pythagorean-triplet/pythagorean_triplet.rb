class Triplet
  attr_accessor :sum, :product
  def initialize(a, b ,c)
    @a, @b, @c = a, b, c
    @sum = @a + @b + @c
    @product = @a * @b * @c
  end


end
