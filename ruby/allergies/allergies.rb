class Allergies
  def initialize(score)
    @score = score
    @allergies = []
  end

  def allergic_to?(item)
    find_allergies
    @allergies.include?(item)
  end

  def find_allergies
    return @allergies if @score.zero?

  end
end
