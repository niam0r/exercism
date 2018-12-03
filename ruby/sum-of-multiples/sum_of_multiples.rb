class SumOfMultiples
  def initialize(a, b)
    @a, @b = a, b
  end

  def to(limit)
    return 0 if limit == 0
    results = (@a..limit - 1).select do |n|
      n % @a == 0 || n % @b == 0
    end.sum
  end

  # def to(limit)
  #   results = []
  #   (1..limit - 1).each do |n|
  #     p n
  #     results.push(n) if n % @a == 0 || n % @b == 0
  #   end
  #   p results
  # end
end


# sum_of_multiples = SumOfMultiples.new(3, 5)
# sum_of_multiples.to(10)
