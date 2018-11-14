class BeerSong
  def self.recite(count, n_verses)
    c = count.clone
    verses = []

    penultimate_line = <<-TEXT.gsub(/^ */, '')
    1 bottle of beer on the wall, 1 bottle of beer.
    Take it down and pass it around, no more bottles of beer on the wall.
    TEXT

    last_line = <<-TEXT.gsub(/^ */, '')
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall.
    TEXT

    if c == 0
      last_line
    else
      while c > 1 do
        line = <<-TEXT.gsub(/^ */, '')
        #{c} bottles of beer on the wall, #{c} bottles of beer.
        Take one down and pass it around, #{c-1} bottle#{c == 1 || c == 2 ? nil : 's'} of beer on the wall.
        TEXT
        verses.push(line)
        c -= 1
      end
      verses.push(penultimate_line, last_line)
      verses.first(n_verses).join("\n")
    end

  end
end
