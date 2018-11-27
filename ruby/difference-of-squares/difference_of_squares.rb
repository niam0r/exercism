class Squares
  attr_reader :square_of_sum, :sum_of_squares, :difference

  def initialize(n)
    @square_of_sum = (0..n).sum ** 2
    @sum_of_squares = (0..n).sum { |x| x ** 2 }
    @difference = @square_of_sum - @sum_of_squares
  end
end
