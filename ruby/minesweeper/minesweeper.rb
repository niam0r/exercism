class Board
  def self.transform(arr_of_str)
    raise ArgumentError unless validates(arr_of_str)
    @@rows = arr_of_str.map { |str| str.chars }
    @@cols = @@rows.transpose

    # iterate through each square
    @@rows.each_with_index do |row, yi|
      row.each_with_index do |square, xi|
        # if any adjacent square has a mine
        count = count_adjacent_mines(xi, yi)
        if ((count > 0) && (square == ' '))
          # replace the value in the square if there's mines around and the square is empty
          @@rows[yi][xi] = count
        end
      end
    end

    @@rows
  end

  def self.count_adjacent_mines(x, y)
    count = 0
    adjacents = [] # array containing coords of adjacent squares
    adjacents.push([x-1, y-1])
    adjacents.push([x, y-1])
    adjacents.push([x+1, y-1])
    adjacents.push([x-1, y])
    adjacents.push([x+1, y])
    adjacents.push([x-1, y-1])
    adjacents.push([x, y+1])
    adjacents.push([x+1, y+1])

    # adjacents.each do |adj|
    #   x = adj[0]
    #   y = adj[1]
    #   if !@@rows[y][x].nil? && @@rows[y][x] == '*'
    #     count += 1
    #   end
    # end

    count
  end

  def self.validates(arr_of_str)
    same_length = arr_of_str.all? do |arr|
      arr.length == arr[0].length
    end
    same_length
  end
end
