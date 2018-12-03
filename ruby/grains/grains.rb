class Grains
  def self.square(n)
    raise ArgumentError if (n <= 0 || n > 64)

    results = [1]
    #                                               << 1 same as * 2
    (1..n - 1).each { |n| results.push(results.last << 1) }
    results.last
  end

  def self.total
    results = [1]
    (1..63).each { |n| results.push(results.last << 1) }
    results.sum
  end
end
