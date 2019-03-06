require 'date'

class Meetup # :nodoc:
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(day, option)
    if option == :teenth
      find_date(day, 13, 19)
    elsif option == :first
      find_date(day, 1, 7)
    elsif option == :second
      find_date(day, 8, 15)
    elsif option == :third
      find_date(day, 15, 22)
    elsif option == :fourth
      find_fourth(day)
    elsif option == :last
      find_last(day)
    end
  end

  def find_fourth(day)
    find_date(day, 22, 29)
  end

  def find_last(day)
    first, last = get_last_week_days
    find_date(day, first, last)
  end

  def find_date(day, first, last)
    possible_dates(first, last).find do |date|
      day.to_s == date.strftime('%A').downcase
    end
  end

  def possible_dates(first, last)
    [*first..last].map do |day|
      # next if @month == 2 && day > 28
      Date.new(@year, @month, day)
    end
  end

  def get_last_week_days
    last = Date.new(@year, @month, -1).mday
    first = last - 6
    [first, last]
  end
end

# meetup = Meetup.new(5, 2013).day(:monday, :teenth)

# p Date.parse("2013-05-13")
# p meetup
