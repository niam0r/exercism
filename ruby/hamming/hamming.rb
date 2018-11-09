class Hamming
  def self.compute(str_a, str_b)
    raise ArgumentError if str_a.size != str_b.size
    str_a.each_char.with_index.reject { |chr, i| chr == str_b[i] }.length
  end
end
