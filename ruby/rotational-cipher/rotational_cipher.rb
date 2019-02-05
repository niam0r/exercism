class RotationalCipher
  def self.rotate(input, key)
    return input if key == 0 || (key % 26).zero?

  end
end
