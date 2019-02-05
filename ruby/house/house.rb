ITEMS = {
  1 => 'house',
  2 => 'malt',
  3 => 'rat',
  4 => 'dog',
  5 => 'cow with the crumpled horn',
  6 => 'maiden all forlorn',
  7 => 'man all tattered and torn',
  8 => 'priest all shaven and shorn',
}

VERBS = {
  2 => 'lay in',
  3 => 'ate',
  4 => 'worried',
  5 => 'tossed',
  6 => 'milked',
  7 => 'kissed',
  8 => 'married',
}

class House
  def self.verse(n)
    return "This is the house that Jack built." if n == 1

    verse = "This is the #{ITEMS[n]}"

    (2..n).reverse_each { |n| verse << "\nthat #{VERBS[n]} the #{ITEMS[n - 1]}" }

    verse << " that Jack built."
  end


  def self.recite
    song = ""
    (1..8).each { |n| song << "#{verse(n)}\n\n" }
    song
  end
end

puts House.recite

expected = <<-RHYME

This is the rooster that crowed in the morn
that woke the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.

This is the farmer sowing his corn
that kept the rooster that crowed in the morn
that woke the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.

This is the horse and the hound and the horn
that belonged to the farmer sowing his corn
that kept the rooster that crowed in the morn
that woke the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built.
    RHYME
