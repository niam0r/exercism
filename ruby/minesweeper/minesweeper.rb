class Board
  def self.transform(board)
    raise ArgumentError unless validate_top_and_bottom(board) && validate_rows(board)
    @@rows = board.map { |str| str.chars }
    @@cols = @@rows.transpose

    board.each_with_index.map do |row, ri|
      row.each_char.with_index.map do |square, ci|
        square == ' ' ? count_mines(board, ri, ci) : square
      end.join('')
    end
  end

  def self.count_mines(board, ri, ci)
    mines = board[(ri-1)..(ri+1)].map{ |row| row[(ci-1)..(ci+1)] }.join('').count('*')
    mines == 0 ? ' ' : mines.to_s
  end

  def self.validate_top_and_bottom(board)
    [board[0],board[-1]].all? { |caps| caps =~ /^\+-{#{board[0].length - 2}}\+$/ }
  end

  def self.validate_rows(board)
    board[1..-2].all? { |row| row =~ /^\|[ *]{#{board[0].length - 2}}\|$/ }
  end
end

