ALLERGENS = {
  128 => 'cats',
  64 => 'pollen',
  32 => 'chocolate',
  16 => 'tomatoes',
  8 => 'strawberries',
  4 => 'shellfish',
  2 => 'peanuts',
  1 => 'eggs'
}.freeze

class Allergies
  attr_reader :list
  def initialize(score)
    @list = ALLERGENS.select { |key, allergen| key & score == key }.values
  end

  def allergic_to?(item)
    @list.include?(item)
  end
end

