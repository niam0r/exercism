class Atbash
  def self.encode(input)
    input.downcase.delete(' ').chars.map{ |l| self.encode_letter(l) }.each_slice(5).map(&:join).join(' ')
  end

  def self.encode_letter(l)
    alphabet = [*'a'..'z']
    reversed = [*'a'..'z'].reverse
    reversed[alphabet.find_index(l)]
  end
end


p Atbash.encode_letter('a')
