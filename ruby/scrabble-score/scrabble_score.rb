SCORING = {
  1 => %w(A E I O U L N R S T),
  2 => %w(D G),
  3 => %w(B C M P),
  4 => %w(F H V W Y),
  5 => %w(K),
  8 => %w(J X),
  10 => %w(Q Z)
}

class Scrabble
  def initialize(word)
    @word = word.nil? ? '' : word.strip.upcase
  end

  def score
    score = 0
    return score if @word == ''
    SCORING.each do |key, value|
      @word.each_char do |char|
        score += key if value.include?(char)
      end
    end
    score
  end

  def self.score(word)
    new(word).score
  end
end
