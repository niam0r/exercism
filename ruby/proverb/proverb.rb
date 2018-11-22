class Proverb
  def initialize(*strings)
    @first = strings.first
    @strings = strings
  end

  def to_s
    proverb = []
    @strings.each_with_index do |str, i|
      proverb << "For want of a #{str} the #{@strings[i + 1]} was lost."
    end
    proverb.pop
    proverb.push("And all for the want of a #{@first}.").join("\n")
  end
end


# Proverb.new('nail', 'shoe').to_s
# p Proverb.new('nail', 'shoe', 'horse').to_s

