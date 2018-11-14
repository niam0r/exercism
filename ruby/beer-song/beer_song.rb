class BeerSong
  def self.recite(count, n_verses)
    verses = []
    while count > 1 do
      line = <<-TEXT.gsub(/^ */, '')
      #{count} bottles of beer on the wall, #{count} bottles of beer.
      Take one down and pass it around, #{count-1} bottle#{count == 1 ? nil : 's'} of beer on the wall.
      TEXT
      verses.push(line)
      count -= 1
    end

    last_lines = <<-TEXT.gsub(/^ */, '')
    1 bottle of beer on the wall, 1 bottle of beer.
    Take it down and pass it around, no more bottles of beer on the wall.

    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, #{count -1} bottle#{count == 1 ? nil : 's'} of beer on the wall.
    TEXT

    verses.push(last_lines)

    verses.first(n_verses).join("\n")
  end
end

puts BeerSong.recite(99, 100)
