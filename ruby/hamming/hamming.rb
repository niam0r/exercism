class Hamming
  def self.compute(str_a, str_b)
    raise ArgumentError if str_a.size != str_b.size
    str_a.chars.zip(str_b.chars).count{ |a, b| a != b}
    # previous iteration
    # str_a.each_char.with_index.reject { |chr, i| chr == str_b[i] }.length
  end


end
