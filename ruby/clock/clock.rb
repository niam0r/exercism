class Clock
  attr_reader :total_minutes

  def initialize(hour: 0, minute: 0)
    @total_minutes = hour * 60 + minute
  end

  def to_s
    "#{hour}:#{minute}"
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
    self
  end

  private

  def hour
    result = @total_minutes / 60
    result -= 24 until result < 24
    result += 24 until result >= 0
    result < 10 ? "0#{result}" : result
  end

  def minute
    result = @total_minutes % 60
    result < 10 ? "0#{result}" : result
  end
end
