require 'date'

class Meetup # :nodoc:
  # RANGES = {
  #   teenth: 13..19,
  #   first: 1..7,
  #   second: 8..15,
  #   third: 15..22,
  #   fourth:
  # }

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(day, option)
    if option == :teenth
      find_date(day, 13..19)
    elsif option == :first
      find_date(day, 1..7)
    elsif option == :second
      find_date(day, 8..15)
    elsif option == :third
      find_date(day, 15..22)
    elsif option == :fourth
      find_fourth(day)
    elsif option == :last
      find_date(day, last_week_range)
    end
  end

  def find_fourth(day)
    Date.leap?(@year) ? find_date(day, 22..29) : find_date(day, 22..28)
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
    first = last - 6
    first..last
  end
end

# meetup = Meetup.new(5, 2013).day(:monday, :teenth)

# p Date.parse("2013-05-13")
# p meetup
