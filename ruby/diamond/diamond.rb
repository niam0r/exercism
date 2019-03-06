class Diamond
  def initialize(letter)
    @letter = letter
    @position = letter.ord - 65
    @diamond = ""
  end

  def self.make_diamond(letter)
    return "A\n" if letter == 'A'

    new(letter).build_diamond
  end

  def build_diamond

    # @diamond = preceding_rows(letter)
    @diamond << middle_row
    # @diamond << following_rows(letter)
    @diamond
  end

  def middle_row
    @letter + " " * @position + @letter + "\n"
  end
end

puts Diamond.make_diamond('E')
