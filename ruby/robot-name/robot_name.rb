class Robot
  attr_reader :name
  @@names = []

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
    numbers = (0..9).to_a
    generated_name = letters.sample(2).join + numbers.sample(3).join.to_s
    @@names.include?(generated_name) ? generate_name : @@names << generated_name
    return generated_name
  end
end
