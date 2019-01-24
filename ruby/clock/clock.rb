class Clock
  attr_reader :total_minutes

  def initialize(hour: 0, minute: 0)
    @total_minutes = hour * 60 + minute
  end

  def to_s
    format(@total_minutes / 60 % 24) + ':' + format(@total_minutes % 60)
  end

  def +(other)
    @total_minutes += other.total_minutes
    self
  end

  def -(other)
    @total_minutes -= other.total_minutes
    self
  end

  def ==(other)
    to_s == other.to_s
  end

  private

  def format(input)
    input < 10 ? "0#{input}" : input.to_s
  end
end
