class Atbash
  def self.encode(input)
    input.delete(' ').chars.map(&:Atbash.encode_letter).each_slice(5).map(&:join)
  end

  def self.encode_letter(l)
    alphabet = [*'a'..'z']
    reversed = [*'a'..'z'].reverse
    reversed[alphabet.find_index(l)]
  end
end


p Atbash.encode_letter('a')
