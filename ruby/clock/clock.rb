class Clock
  def initialize(hour: 0, minute: 0)
    @total_minutes = (hour * 60 + minute) % 1440
  end

  def to_s
    format(total_minutes / 60 % 24) + ':' + format(total_minutes % 60)
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
    total_minutes == other.total_minutes
  end

  protected
  attr_reader :total_minutes

  private

  def format(input)
    input < 10 ? "0#{input}" : input.to_s
  end
end
