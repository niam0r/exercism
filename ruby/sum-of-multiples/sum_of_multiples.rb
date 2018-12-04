class SumOfMultiples
  def initialize(a=nil , b=a, c=a)
    @a, @b ,@c= a, b, c
  end

  def to(limit)
    return 0 if limit.zero? || @a.nil? || @a.zero?

    (@a..limit - 1).select do |n|
      n % @a == 0 || n % @b == 0 || n % @c == 0
    end.sum
  end
end


# sum_of_multiples = SumOfMultiples.new(3, 5)
# sum_of_multiples.to(10)
