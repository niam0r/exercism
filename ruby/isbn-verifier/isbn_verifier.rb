class IsbnVerifier
  def self.valid?(str)
    normalized = str.gsub(/[^0-9X]/, '').chars
    return false if normalized.size != 10

    sum = normalized.each_with_index.reduce(0) do |acc, (n, i)|
      acc += 10 if n == 'X'
      acc += n.to_i * (10 - i)
    end
    sum % 11 == 0
  end
end
