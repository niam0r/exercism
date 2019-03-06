class Diamond
  class << self
    def make_diamond(letter)
      return "A\n" if letter == 'A'

      result = preceding_rows(letter)
      result << row(letter)
      result << following_rows(letter)
    end

    def row(letter)
      position = letter.ord - 65
      letter + " " * position + letter + "\n"
    end
  end
end

puts Diamond.row('E')
