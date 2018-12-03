class Prime
  class << self
    def nth(n)
      raise ArgumentError if n <= 0
      e = Enumerator.new do |y|
        n = 2
        loop do
            y << n
            n = next_prime(n)
        end
      end
      e.take(n).last
    end

    def is_prime?(n)
      false if n <= 1
      2.upto(Math.sqrt(n).to_i) do |x|
        return false if n % x == 0
      end
      true
    end

    def next_prime(n)
      n += 1
      n = n + 1 until is_prime?(n)
      n
    end
  end
end
