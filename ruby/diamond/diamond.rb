require 'pry'

class Diamond # :nodoc:
  def initialize(letter)
    @letter = letter
    @position = letter.ord - 64
    @row_whitespaces = @position * 2 - 3
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
    @diamond_rows.flatten.join("\n") + "\n"
  end

  def letter_a_row
    padding = @position - 1
    ' ' * padding + 'A' + ' ' * padding
  end

  def build_rows
    [*'B'...@letter].map { |letter| row(letter) } || nil
  end

  def row(letter)
    letter.rjust(padding(letter)) + inside_space(letter) + letter.ljust(padding(letter))
  end

  def padding(letter)
    (@row_whitespaces - position(letter)) / 2 + 1
  end

  def inside_space(letter)
    ' ' * (@row_whitespaces - ((padding(letter) + 1) * 2))
  end

  def middle_row
    @letter + ' ' * (@row_whitespaces) + @letter
  end
end

puts Diamond.make_diamond('D')
