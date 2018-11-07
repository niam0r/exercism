class Queens
  def initialize(white: nil, black: nil)
    raise ArgumentError if :white == :black
    @white = validate(white) if white
    @black = validate(black) if black
  end

  def attack?
    same_row_or_col? || same_diagonal?
  end

  private

  def same_diagonal?
   (@white[0] - @black[0]).abs == (@white[1] - @black[1]).abs
  end

  def same_row_or_col?
    @white[0] == @black[0] || @white[1] == @black[1]
  end

  def validate(queen)
    raise ArgumentError unless queen.all? do |coord|
      (0..7).cover?(coord)
    end
    queen
  end
end
