Palindrome = Struct.new(:value, :factors)

class Palindromes
  def initialize(conditions)
    @min = conditions.fetch(:min_factor) {1}
    @max = conditions.fetch(:max_factor)
    @range = [*@min..@max]
  end

  def generate
    @palindromes = {}
    @range.repeated_combination(2).map {|c| c.first * c.last}
  end



  def largest

  end

  private

  def is_palindrome?(int)
    int.to_s == int.to_s.reverse
  end
end


palindromes = Palindromes.new(max_factor: 9)
p palindromes.generate
