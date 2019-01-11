class Palindromes
  def initialize(conditions)

  end

  private

  def is_palindrome?(int)
    int.to_s == int.to_s.reverse
  end
end
