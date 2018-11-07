class Hamming
  def self.compute(str_a, str_b)
    raise ArgumentError if str_a.size != str_b.size
    count = 0
    str_a.each_char.with_index { |chr, i| count += 1 if chr != str_b[i] }
    count
  end
end
