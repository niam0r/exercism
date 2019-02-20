class Frame
  attr_reader :first, :second
  def initialize(first, second, strike = false, spare = false)
    @first = first
    @second = second
    @strike = strike
    @spare = spare
  end

  def strike?
    @strike
  end

  def spare?
    @spare
  end
end
