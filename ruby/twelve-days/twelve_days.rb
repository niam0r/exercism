require 'numbers_and_words'
# p 42.to_words
# p 42.to_words(ordinal: true)

GIFTS = {
  1 => 'a Partridge in a Pear Tree',
  2 => 'Turtle Doves,',
  3 => 'French Hens,',
  4 => 'Calling Birds,',
  5 => 'Gold Rings,',
  6 => 'Geese-a-Laying,',
  7 => 'Swans-a-Swimming,',
  8 => 'Maids-a-Milking,',
  9 => 'Ladies Dancing,',
  10 => 'Lords-a-Leaping,',
  11 => 'Pipers Piping,',
  12 => 'Drummers Drumming,'
}

class TwelveDays
  def self.build_list(n)
    return "and #{GIFTS[1]}" if n == 1

    list = ''
    for i in [*2..n].reverse
      list << "#{i.to_words} #{GIFTS[i]} "
    end
    list << "and #{GIFTS[1]}"
    list
  end

  def self.verse(n)
    "On the #{n.to_words(ordinal: true)} day of Christmas my true love gave to me: #{build_list(n)}."


  end

  def self.song

  end
end



p TwelveDays.verse(3)
