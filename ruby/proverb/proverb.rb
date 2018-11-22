class Proverb
  def initialize(*words, qualifier: nil)
    @words = words
    @qualifier = qualifier ? qualifier + ' ' : ''
  end

  def to_s
    proverb = []
    @words.each_with_index do |str, i|
      proverb << "For want of a #{str} the #{@words[i + 1]} was lost."
    end
    proverb.pop
    proverb.push("And all for the want of a #{@qualifier}#{@words.first}.").join("\n")
  end
end
