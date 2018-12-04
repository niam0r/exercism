class IsbnVerifier
  def self.valid?(str)
    factors = [10, 9 , 8, 7, 6, 5, 4, 3, 2, 1]
    sum = 0

    return false if str.empty?
    normalized = str.gsub('-', '').chars
    if normalized[-1] == 'X'
      sum += 10
      normalized[-1] = ''
    end

    return false if normalized.size != 10

    normalized.each_with_index do |n, i|
      sum += n.to_i * factors[i]
    end
    sum % 11 == 0
  end
end
