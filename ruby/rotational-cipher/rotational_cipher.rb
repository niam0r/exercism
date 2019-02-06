class RotationalCipher # :nodoc:
  def self.rotate(input, key)
    return input if key == 0 || (key % 26).zero?

    input.chars.map do |char|
      if char.match(/[a-zA-Z]/)
        position = char.ord + key
        position -= 26 if char.ord <= 90 && position > 90
        position -= 26 if char.ord >= 90 && position > 122
        (position).chr
      else
        char
      end
    end.join
  end
end
