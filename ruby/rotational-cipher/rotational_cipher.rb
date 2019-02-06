class RotationalCipher # :nodoc:
  def self.rotate(input, key)
    return input if key.zero? || (key % 26).zero?

    input.chars.map do |char|
      if char.=~(/[a-zA-Z]/)
        position = char.ord + key
        position -= 26 if char.ord <= 90 && position > 90
        position -= 26 if char.ord >= 90 && position > 122
        position.chr
      else
        char
      end
    end.join
  end
end

# gchan's solution

# module RotationalCipher
#   def self.rotate(input, rotate)
#     from = ('a'..'z').to_a
#     to   = from.rotate(rotate)

#     input
#       .tr(from.join, to.join)
#       .tr(from.join.upcase, to.join.upcase)
#   end
# end
