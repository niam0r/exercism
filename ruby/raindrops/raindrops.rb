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
end
