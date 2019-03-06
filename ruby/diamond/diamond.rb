require 'pry'

class Diamond
  def initialize(letter)
    @letter = letter
    @position = letter.ord - 64
    @row_length = @position * 2 - 1
    @diamond = ""
  end

  def position(letter)
    letter.ord - 65
  end

  def self.make_diamond(letter)
    return "A\n" if letter == 'A'

    Diamond.new(letter).build_diamond
    @diamond
  end

  def build_diamond
    binding.pry
    @diamond << letter_a_row
    @diamond << build_rows
    @diamond << middle_row
    @diamond << build_rows.reverse
    @diamond << letter_a_row
  end

  def letter_a_row
    " " * ((@row_length - 1) / 2) + 'A' + " " * ((@row_length - 1) / 2) + "\n"
  end

  def build_rows
    ['B'..@letter].map { |letter| row(letter) }
  end

  def row(letter)
    padding(letter) + inside_spacing(letter) + padding(letter)
   end

  def padding(letter)
    " " * position
  end

  def inside_spacing(letter)
    letter + " " * position + letter
  end

  def middle_row
    @letter + " " * @position + @letter + "\n"
  end
end

puts Diamond.make_diamond('B')
