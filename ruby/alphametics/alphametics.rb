# gchan's solution:
# class Alphametics
#   def self.solve(equation)
#     equation.gsub!('^', '**')
#     letters = equation.scan(/[A-Z]/).uniq

#     (0..9).to_a.permutation(letters.count).each do |digits|
#       map = Hash[*(letters.zip(digits).flatten)]

#       substitued = equation.gsub(/[A-Z]/, map)
#       next if substitued.match(/(\s|\A)0/)

#       return map if eval(substitued)
#     end
#   end
# end

# kkelleey's solution:
class Alphametics
  class << self

  def solve(string)
    @string = string.gsub('^', '**')

    possible_maps.find { |map| puzzle_solved?(map) }
  end

  private

  def possible_maps
    uniq_chars = @string.scan(/[[:alpha:]]/).uniq
    permutations = (0..9).to_a.permutation(uniq_chars.length)

    permutations.map do |permutation|
      uniq_chars.zip(permutation).to_h
    end
  end

  def puzzle_solved?(map)
    string = @string.gsub(/[[:alpha:]]/, map)
    return false if string =~ /\b0\d+/
    eval(string)
  end
end

class BookKeeping
  VERSION = 2
end
