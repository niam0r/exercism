class Raindrops
  RAINDROPS  = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }
  # mentor message:
  #   posted 1 day ago
  # Sum will aggregate output.

  #  output = ''
  #     RAINDROPS.each_key do |key|
  #       output << blah
  #     end
  #     output = RAINDROPS.sum("") do |key|
  #       blah
  #     end
  # It's annoying that we still need to assign it to check the result later

  def self.convert(input)
    output = RAINDROPS.sum do |key|
      RAINDROPS[key] if (input % key).zero?
    end
    output.empty? ? input.to_s : output
  end


  # previous solution
  # def self.convert(input)
  #   output = ''
  #   RAINDROPS.each_key do |key|
  #     output << RAINDROPS[key] if (input % key).zero?
  #   end
  #   output.empty? ? input.to_s : output
  # end
end
