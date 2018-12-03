class SumOfMultiples
  def initialize(a, b)
    @a, @b = a, b
    @multiples = find_multiples
  end

  def to(limit)
    @multiples.reject { |n| n > limit }.sum
  end

  def find_multiples
    (@a..@b).select do |n|
      @a % n == 0 || @b % n == 0
    end
  end
end
