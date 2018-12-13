class Sieve
  attr_accessor :primes
  def initialize(limit)
    @range = (2..limit).to_a
    @composites = find_composites
    @primes = @range - @composites
  end

  def composites
    composites = []
    @range.each do |n|

    end
  end
end
