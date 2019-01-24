class Clock
  MINUTES_PER_HOUR = 60
  MINUTES_PER_DAY = 1440
  HOURS_PER_DAY = 24

  def initialize(hour: 0, minute: 0)
    @total_minutes = (hour * MINUTES_PER_HOUR + minute) % MINUTES_PER_DAY
  end

  def to_s
    format(total_minutes / MINUTES_PER_HOUR % HOURS_PER_DAY) + ':' + format(total_minutes % 60)
  end

  def +(other)
    Clock.new(minute: total_minutes + other.total_minutes)
  end

  def -(other)
    Clock.new(minute: total_minutes - other.total_minutes)
  end

  def ==(other)
    total_minutes == other.total_minutes
  end
  alias eql? ==

  # Objects that re-implement #== usually also want to re-implement #hash and #eql?
  # so that objects that are considered the "same" are still considered "same" when used as hash keys.
  # It's normal to define these methods when creating value objects.

  def hash
    [self.class, self.time].hash
  end

  protected

  attr_reader :total_minutes

  private

  def format(input)
    input < 10 ? "0#{input}" : input.to_s
  end
end
