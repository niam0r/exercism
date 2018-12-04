class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(n)
    return 0 if n == 0 || n == 1 || @factors.empty?
    (0...n).select { |x| multiple? x }.sum
  end

  private

  def multiple?(x)
    @factors.any? { |f| x % f == 0 }
  end
end
