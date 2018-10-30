class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(list)
    results = []
    list.each do |word|
      results << word if word.downcase.chars.sort == @word.chars.sort
    end
    results.reject { |word| word.downcase == @word }
  end
end
