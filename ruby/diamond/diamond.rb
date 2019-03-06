class Diamond
  def initialize(letter)
    @letter = letter
    @position = letter.ord - 65
    @row_length = @position * 2 - 1
    @diamond = ""
  end

  def self.make_diamond(letter)
    return "A\n" if letter == 'A'

    new(letter).build_diamond
    @diamond
  end

  def build_diamond
    @diamond << build_rows
    @diamond << middle_row
    @diamond << build_rows.reverse
  end

  def build_rows
    ['A'..@letter].map { |letter| row(letter) }
  end

  def row(letter)

  end

  def middle_row
    @letter + " " * @position + @letter + "\n"
  end
end

puts Diamond.make_diamond('E')
