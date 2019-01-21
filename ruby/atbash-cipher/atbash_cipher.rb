class Atbash
  def self.encode(input)
    normalized = input.downcase.gsub(/\W/, '')
    normalized.chars.map { |letter| encrypt(letter) }.each_slice(5).map(&:join).join(' ')
  end

  def self.encrypt(letter)
    alphabet = [*'a'..'z']
    reversed = [*'a'..'z'].reverse
    found_index = alphabet.find_index(letter)
    found_index ? [reversed[found_index]] : letter
  end
end

#kkelleey's solution

# class Atbash
#   def self.encode(str)
#     str
#       .downcase
#       .tr('a-z', ('a'..'z').to_a.reverse.join)
#       .gsub(/[^[:alnum:]]/, '')
#       .scan(/.{1,5}/)
#       .join(' ')
#   end
# end
