class Phrase
  def initialize(phrase)
    @phrase_array = phrase.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    @phrase_array.each_with_object(Hash.new(0)) do |word, hash|
      hash[word] += 1
    end
 end
end

