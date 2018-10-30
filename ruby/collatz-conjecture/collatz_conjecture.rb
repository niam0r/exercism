class CollatzConjecture
  def self.steps(n)
    raise ArgumentError if n <= 0
    steps = 0

    while n > 1
      n = n.even? ? n = n / 2 : n * 3 + 1
      steps += 1
    end

    return steps
  end
end
