class PrimeFactors
  def self.for(n)
    factors = []

    until n == 1
      [2..n / 2].each do |divisor|
        factors << divisor if n % divisor == 0
        divisor += 1
      end
    end

    factors
  end
end
