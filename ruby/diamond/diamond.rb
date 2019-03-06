require 'pry'

class Diamond
  def initialize(letter)
    @letter = letter
    @position = letter.ord - 64
    @row_length = @position * 2 - 1
    @diamond_rows = []
  end

  def position(letter)
    letter.ord - 65
  end

  def self.make_diamond(letter)
    return "A\n" if letter == 'A'

    Diamond.new(letter).build_diamond
  end

  def build_diamond
    @diamond_rows << letter_a_row
    @diamond_rows << build_rows
    @diamond_rows << middle_row
    @diamond_rows << build_rows.reverse
    @diamond_rows << letter_a_row
    @diamond_rows.flatten.join("\n")
  end

  def letter_a_row
    " " * ((@row_length - 1) / 2) + 'A' + " " * ((@row_length - 1) / 2)
  end

  def build_rows
    [*'B'...@letter].map { |letter| row(letter) } || nil
  end

  def row(letter)
    padding(letter) + letter + inside_space(letter) + letter + padding(letter)
   end

  def padding(letter)
    " " * position(letter)
  end

  def inside_space(letter)
    " " * position(letter)
  end

  def middle_row
    @letter + " " * ((@position - 1) * 2) + @letter
  end
end

puts Diamond.make_diamond('C')
