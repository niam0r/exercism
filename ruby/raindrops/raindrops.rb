class Raindrops
  RAINDROPS  = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(input)
    output = ''
    RAINDROPS.each_key do |key|
      output << RAINDROPS[key] if (input % key).zero?
    end
    output.empty? ? input.to_s : output
  end

  # solution suggested by mentor ajoshguy:
  # not working

  # def self.convert(input)
  #   output = RAINDROPS.sum("") do |key, value|
  #     (input % key).zero? ? "" : value
  #   end
  #   output.empty? ? input.to_s : output
  # end
end
