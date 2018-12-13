class Allergies
  ALLERGENS = %w(eggs peanuts shellfish strawberries tomatoes chocolate pollen cats)

  def initialize(score)
    @score = score
  end

  def list
    ALLERGENS.select do |item|
      allergic_to?(item)
    end
  end

  # This project uses a concept called bitflagging where each new allergen
  # is a power of 2. If you want to see how this works, try using to_s(2)
  # to turn @score into a binary string. `@score.to_s(2) #=> 100010` when
  # @score == 34. The first 1 is chocolate, the second 1 is peanuts. 32 + 2
  # == 34.
  # This works because even if all the allergens below 'cats' were active,
  # their total value would be 127.
  def allergic_to?(item)
    index = ALLERGENS.index(item)
    # Use a Binary AND to see if this allergen's bit is active or not.
    @score & (2**index) > 0
  end
end

# koblenski's solution:
class Allergies
  ALLERGENS = {
    1 => 'eggs',
    2 => 'peanuts',
    4 => 'shellfish',
    8 => 'strawberries',
    16 => 'tomatoes',
    32 => 'chocolate',
    64 => 'pollen',
    128 => 'cats'
  }

  attr_reader :list

  def initialize(n)
    @list = ALLERGENS.select { |key, allergen| key & n == key }.values
  end

  def allergic_to?(allergen)
    list.include? allergen
  end
end

# gchan's solution
class Allergies
  ITEMS = %w(eggs peanuts shellfish strawberries tomatoes chocolate pollen cats)

  attr_reader :score

  def initialize(score)
    @score = score
  end

  def allergic_to?(item)
    list.include?(item)
  end

  def list
    ITEMS.select.with_index do |item, index|
      score & 2**index > 0
    end
  end
end
