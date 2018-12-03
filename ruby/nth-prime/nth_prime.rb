class Prime
  class << self
    def nth(n)
      raise ArgumentError if n <= 0
      e = Enumerator.new do |y|
        n = 2
        loop do
            y << n
            n = n.next_prime
        end
      end
      e.take(n).last
    end

    def is_prime?
      false if self <= 1
      2.upto(Math.sqrt(self).to_i) do |x|
        return false if self % x == 0
      end
      true
    end

    def next_prime
      n = self + 1
      n = n + 1 until n.is_prime?
      n
    end
  end
end
