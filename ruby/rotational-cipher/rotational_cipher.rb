

class RotationalCipher # :nodoc:
  def self.rotate(input, key)
    return input if key == 0 || (key % 26).zero?

    input.chars.map do |char|
      if char.match(/[a-zA-z]/)
        (char.ord + key).chr
      else
        char
      end
    end.join

  end
end
