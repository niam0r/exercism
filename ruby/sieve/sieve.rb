class Sieve
  attr_accessor :primes
  def initialize(limit)
    @limit = limit
    @range = (2..limit)
    @composites = find_composites
    @primes = @range.to_a - @composites
  end

  def find_composites
    results = []
    @range.map do |n|
      @range.each do |x|
        break if x * n > @limit

        results.push(x * n)
      end
    end
    results
  end
end
