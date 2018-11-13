class Board
  def self.transform(arr_of_str)
    @@rows = arr_of_str.map { |str| str.chars }
    @@cols = @@rows.transpose

    # iterate through each square
    @@rows.each_with_index do |row, yi|
      row.each_with_index do |square, xi|
        # if any adjacent square has a mine
        count = count_adjacent_mines(xi, yi)
        if ((count > 0) && (square == ' '))
          square = count
        end
        # replace the value of n in input
        @@rows[yi][xi] = square
      end
    end

    @@rows
  end

  def self.count_adjacent_mines(x, y)
    count = 0
    adjacents = []
    adjacents.push([x-1, y-1])
    adjacents.push([x, y-1])
    adjacents.push([x+1, y-1])
    adjacents.push([x-1, y])
    adjacents.push([x+1, y])
    adjacents.push([x-1, y-1])
    adjacents.push([x, y+1])
    adjacents.push([x+1, y+1])

    adjacents.each do |adj|
      x = adj[0]
      y = adj[1]
      if @@rows[y][x] == '*'
        count += 1
      end
    end

    count
  end
end
