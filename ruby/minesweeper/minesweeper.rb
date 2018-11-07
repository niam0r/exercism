class Board
  def self.transform(rows)
    cols = rows.transpose

    # iterate through each square
    rows.each_with_index do |row, yi|
      row.each_with_index do |n, xi|
        # if any adjacent square has a mine
        adjacents(xi, yi).each do |adjacent|
          n +=1 if is_mine?(adjacent) && ((n == ' ') || (n.is_a? Numeric))
        end
        # replace the value of n in input
        rows[yi][xi] = n
      end
    end

    rows
  end

  def is_mine?(x, y)
    rows[y][x] == '*'
  end

  def adjacent(x, y)
    adjacents = []
    adjacents.push([x-1, y-1])
    adjacents.push([x, y-1])
    adjacents.push([x+1, y-1])
    adjacents.push([x-1, y])
    adjacents.push([x+1, y])
    adjacents.push([x-1, y-1])
    adjacents.push([x, y+1])
    adjacents.push([x+1, y+1])
    adjacents
  end
end
