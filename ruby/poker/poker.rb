class Poker
  def initialize(hand_arrays)
    @hands = hand_arrays.map { |hand_array| Hand.new(hand_array) }
  end

  def best_hand

  end
end


class Hand
  def initialize(hand_array)
    @hand_array = hand_array
    @cards = hand_array.map { |rank_and_suit| Card.new(rank_and_suit) }
  end
end

class Card
  def initialize(rank_and_suit)
    @rank = rank_and_suit[0..-2] # grabbing first char or first and second
    @suit = rank_and_suit[-1]
  end
end
