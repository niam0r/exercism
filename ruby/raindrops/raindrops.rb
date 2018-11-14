class Raindrops
  def self.convert(input)
    # find factors of n
    factors = (1..input).select { |n| input % n == 0 }
    # keep only  3    , 5     and 7
    raindrops = factors.select { |n| n == 3 || n == 5 ||n == 7 }
    # if none return n.to_s
    return input.to_s if raindrops.empty?
    # replace by Pling, Plang and Plong
    raindrops.join.gsub(/[357]/, '3' => 'Pling', '5' => 'Plang', '7' => 'Plong')

  end
end
