class Robot
  attr_reader :name
  @@names = {}

  def initialize
    generate_names
    @name = pick_name
  end

  def reset
    # mark name as used
    @name = pick_name
  end


  def self.forget; end

  private

  def pick_name

  end

  def generate_names
    letters = ('AA'..'ZZ').to_a
    numbers = (000..999).to_a

    #cycle through letters and numbers to get all possibilities
    #set name as unused

  end
end

#old code
# class Robot
#   attr_reader :name
#   @@used_names = {}

#   def initialize
#     @name = generate_name
#   end

#   def reset
#     @name = generate_name
#   end

#   def self.forget

#   end

#   private

#   def generate_name
#     letters = ('A'..'Z').to_a
#     numbers = (0..9).to_a
#     generated_name = letters.sample(2).join + numbers.sample(3).join.to_s
#     if @@used_names[generated_name]
#       generate_name
#     else
#       @@used_names[generated_name] = true
#       return generated_name
#     end
#   end
# end
