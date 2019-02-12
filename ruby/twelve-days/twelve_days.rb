require 'numbers_and_words'

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
}.freeze

class TwelveDays
  def self.gifts(n)
    return GIFTS[1] if n == 1

    list = [*2..n].reverse_each.map { |i| "#{i.to_words} #{GIFTS[i]} " }
    list.push("and #{GIFTS[1]}").join('')
  end

  def self.verse(n)
    "On the #{n.to_words(ordinal: true)} day of Christmas my true love gave to me: #{gifts(n)}."
  end

  def self.song
    GIFTS.each_key.map { |key| verse(key) }.join("\n\n") + "\n"
  end
end
