class SumOfMultiples
  def initialize(a, b)
    @a, @b = a, b
  end

  def to(limit)
    (@a..limit - 1).select do |n|
      @a % n == 0 || @b % n == 0
    end.sum
  end
end
