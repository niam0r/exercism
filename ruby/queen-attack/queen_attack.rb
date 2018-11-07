class Queens
  def initialize(white: nil, black: nil)
    raise ArgumentError if :white == :black
    @white = validate(white) if white
    @black = validate(black) if black
  end

  def attack?

  end

  private

  def validate(queen)
    raise ArgumentError unless queen.all? do |coord|
      (0..7).cover?(coord)
    end
  end
end
