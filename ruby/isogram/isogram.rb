class Isogram
   def self.isogram?(input)
    letters = input.downcase.scan(/\p{L}/)
    letters.uniq == letters
  end
end
