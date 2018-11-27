class Board
  def initialize(board)
    @board = board
  end

  def winner
    winner = ''
    winner if !@board.include?('O')


    winner
  end
end


# "Player O" plays from top to bottom, "Player X" plays from left to right
