class Alphametics
  def self.solve(puzzle)
    # split str input into addends and sum #match
    sum = puzzle.scan(/\w+/).last
    addends = puzzle.scan(/\w+/)[0..-2]
    puts sum
    # go through possible digit 1 to 9 for addends
  end
end

# Alphametics.solve('I + BB == ILL')
Alphametics.solve('I + C + BB == ILL')
