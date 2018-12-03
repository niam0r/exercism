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
      (2..Math.sqrt(n).to_i).none? { |divisor| n % divisor == 0 }
    end

    def next_prime(n)
      n += 1
      n = n + 1 until is_prime?(n)
      n
    end
  end
end

# ggpasqualino's solution

# class Prime
#   include Enumerable

#   def self.nth(index)
#     raise ArgumentError, 'index out of bound' if index <= 0
#     new.take(index).last
#   end

#   def each(&block)
#     (2..Float::INFINITY).each do |i|
#       yield(i) if prime?(i)
#     end
#   end

#   def prime?(i)
#     (2..Math.sqrt(i).to_i).none? { |divisor| i % divisor == 0 }
#   end
# end
