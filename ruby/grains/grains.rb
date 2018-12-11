class Grains
  @@n_of_squares = 64
  def self.square(n)
    raise ArgumentError unless (1..@@n_of_squares).cover?(n)
    2**(n - 1)
  end

  def self.total
    2**@@n_of_squares - 1
  end
end
