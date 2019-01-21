class Atbash
  def self.encode(input)
    normalized = input.downcase.gsub(/\W/, '')
    normalized.chars.map{ |l| self.encrypt(l) }.each_slice(5).map(&:join).join(' ')
  end

  def self.encrypt(l)
    alphabet = [*'a'..'z']
    reversed = [*'a'..'z'].reverse
    found_index = alphabet.find_index(l)
    return found_index ? [reversed[found_index]] : l
  end
end
