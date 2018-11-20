class Alphametics
  def self.solve(puzzle)
    sum = puzzle.scan(/\w+/).last
    addends = puzzle.scan(/\w+/)[0..-2]
    # make hash of letters
    all_letters = puzzle.scan(/[A-Z]/).uniq
    l_h = Hash[all_letters.map { |l| [l, 0] }]
    # go through possible digit 1 to 9 for addends

    puts l_h
  end
end

Alphametics.solve('I + BB == ILL')

