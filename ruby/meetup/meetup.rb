require 'date'

class Meetup # :nodoc:
  RANGES = {
    teenth: 13..19,
    first: 1..7,
    second: 8..15,
    third: 15..22
  }.freeze

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(day, option)
    if RANGES.key?(option)
      find_date(day, RANGES[option])
    elsif option == :fourth
      find_date(day, find_fourth_range)
    elsif option == :last
      find_date(day, last_week_range)
    end
  end

  private

  def find_fourth_range
    Date.leap?(@year) ? 22..29 : 22..28
  end

  def find_date(day, range)
    possible_dates(range).find do |date|
      day.to_s == date.strftime('%A').downcase
    end
  end

  def possible_dates(range)
    [*range].map { |day| Date.new(@year, @month, day) }
  end

  def last_week_range
    last = Date.new(@year, @month, -1).mday
    last - 6..last
  end
end
