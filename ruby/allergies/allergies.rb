ALLERGIES = {
 128 => 'cats',
 64 => 'pollen',
 32 => 'chocolate',
 16 => 'tomatoes',
 8 => 'strawberries',
 4 => 'shellfish',
 2 => 'peanuts',
 1 => 'eggs'
}

class Allergies
  attr_reader :allergies
  def initialize(score)
    @score = score
    @allergies = find_allergies
  end

  def allergic_to?(item)
    @allergies.include?(item)
  end

  private

  def find_allergies
    allergies_list = []
    return allergies_list if @score.zero?
    score_copy = @score
    while score_copy > 0
      ALLERGIES.each do |k, v|
        if score_copy >= k
          allergies_list << v
          score_copy -= k
        end
      end
    end
    allergies_list
  end
end

# allergies = Allergies.new(3)
# p allergies.allergies
