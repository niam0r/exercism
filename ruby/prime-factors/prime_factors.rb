class PrimeFactors
  def self.for(number)
    factors = []
    divisor = 2

    while number > 1
      if number % divisor == 0
        number /= divisor
        factors << divisor
      else
        divisor += 1
      end
    end

    factors
  end
end
