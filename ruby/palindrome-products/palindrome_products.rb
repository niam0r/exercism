Palindrome = Struct.new(:value, :factors)

class Palindromes
  def initialize(conditions)
    @min = conditions.fetch(:min_factor) { 1 }
    @max = conditions.fetch(:max_factor)
    @range = [*@min..@max]
  end

  def generate
    @palindromes = {}
    @range.repeated_combination(2).map do |factors|
      product = factors.first * factors.last
      if palindrome?(product)
        palindrome = @palindromes[product] || Palindrome.new(product, [])
        palindrome.factors << factors.sort
        palindrome.factors.uniq!
        @palindromes[product] = palindrome
      end
    end
  end

  def palindrome?(int)
    int.to_s == int.to_s.reverse
  end

  def sort
    @palindromes.sort_by { |key, _palindrome| key }
  end

  def largest
    sort.last[1]
  end

  def smallest
    sort.first[1]
  end
end
