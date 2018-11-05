class Isogram
   def self.isogram?(input)
    letters = input.downcase.scan(/\p{Letter}/)
    letters.uniq == letters
  end
end
