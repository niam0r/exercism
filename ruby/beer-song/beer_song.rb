class BeerSong
  def self.recite(c, n_verses)
    verses = []

    penultimate_line = <<~EOM
    1 bottle of beer on the wall, 1 bottle of beer.
    Take it down and pass it around, no more bottles of beer on the wall.
    EOM

    last_line = <<~EOM
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall.
    EOM

    if c == 0
      last_line
    else
      while c > 1 do
        verses << <<~EOM
        #{c} bottles of beer on the wall, #{c} bottles of beer.
        Take one down and pass it around, #{c-1} bottle#{c <= 2 ? nil : 's'} of beer on the wall.
        EOM
        c -= 1
      end
      verses.push(penultimate_line, last_line)
      verses.first(n_verses).join("\n")
    end

  end
end
