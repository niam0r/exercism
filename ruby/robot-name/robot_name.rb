class Robot
  attr_reader :name

  def initialize
    @name = generate_name
  end

  def reset
    @name = generate_name
  end

  def self.forget

  end

  private

  def generate_name
    letters = ('A'..'Z').to_a
    numbers = (100..999).to_a
    letters.sample(2).join << numbers.sample.to_s
  end
end
