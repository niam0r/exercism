class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(limit)
    return 0 if limit == 0 || limit == 1 || @factors.empty?
    (@factors.min...limit).select { |x| multiple? x }.sum
  end

  private

  def multiple?(x)
    @factors.any? { |f| x % f == 0 }
  end
end
