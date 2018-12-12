class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    score = 0
    return score if @word == ''
  end
end
