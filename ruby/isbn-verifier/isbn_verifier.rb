class IsbnVerifier
  def self.valid?(str)
    normalized = str.gsub(/[^0-9X]/, '').chars
    return false if normalized.size != 10

    sum = 0
    sum += 10 if normalized[-1] == 'X'

    factors = [10, 9 , 8, 7, 6, 5, 4, 3, 2, 1]
    normalized.each_with_index do |n, i|
      sum += n.to_i * factors[i]
    end
    sum % 11 == 0
  end
end
