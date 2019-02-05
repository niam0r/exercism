ITEMS = {
  1 => 'house',
  2 => 'malt',
  3 => 'rat',
  4 => 'cat',
  5 => 'dog',
  6 => 'cow with the crumpled horn',
  7 => 'maiden all forlorn',
  8 => 'man all tattered and torn',
  9 => 'priest all shaven and shorn',
  10 => 'rooster that crowed in the morn',
  11 => 'farmer sowing his corn',
  12 => 'horse and the hound and the horn'
}.freeze

VERBS = {
  2 => 'lay in',
  3 => 'ate',
  4 => 'killed',
  5 => 'worried',
  6 => 'tossed',
  7 => 'milked',
  8 => 'kissed',
  9 => 'married',
  10 => 'woke',
  11 => 'kept',
  12 => 'belonged to'
}.freeze

class House
  def self.verse(num)
    return 'This is the house that Jack built.' if num == 1

    verse = "This is the #{ITEMS[num]}"

    (2..num).reverse_each { |n| verse << "\nthat #{VERBS[n]} the #{ITEMS[n - 1]}" }

    verse << ' that Jack built.'
  end

  def self.recite
    song = ''
    (1..12).each { |n| song << "#{verse(n)}\n\n" }
    song
  end
end
