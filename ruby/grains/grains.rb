class Grains
  def self.square(n)
    raise ArgumentError if (n <= 0 || n > 64)
    # return the numbers of grains on square n
    return 1 if n == 1

    results = [1]

    (1..n).each do |n|
      results << results[n - 2] * 2
    end
    return results.last
  end

  def total

  end
end
