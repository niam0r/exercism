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
    end
  end

  def find_date(day, first, last)
    possible_dates(first, last).find do |date|
      day.to_s == date.strftime('%A').downcase
    end
  end

  def possible_dates(first, last)
    [*first..last].map do |day|
      Date.new(@year, @month, day)
    end
  end
end

# meetup = Meetup.new(5, 2013).day(:monday, :teenth)

# p Date.parse("2013-05-13")
# p meetup
