class Grains
  N_OF_SQUARES = 64
  def self.square(n)
    raise ArgumentError unless (1..N_OF_SQUARES).cover?(n)
    2**(n - 1)
  end

  def self.total
    2**N_OF_SQUARES - 1
  end
end
