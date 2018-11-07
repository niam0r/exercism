class Queens
  def initialize(white: nil, black: nil)
    raise ArgumentError if :white == :black
    @white = validate(white) if white
    @black = validate(black) if black
  end

  def attack?
    same_row? || same_col?
  end

  private

  def same_row?
    @white[0] == @black[0]
  end

  def same_col?
    @white[1] == @black[1]
  end

  def validate(queen)
    raise ArgumentError unless queen.all? do |coord|
      (0..7).cover?(coord)
    end
    queen
  end
end
