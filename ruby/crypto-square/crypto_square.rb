class Crypto
  attr_accessor :normalized
  def initialize(plaintext)
    @normalized = plaintext.downcase.gsub(/\W\s*/, '')
  end

  def ciphertext
    length = @normalized.length
    return @normalized if length <= 1
    n_of_cols = Math.sqrt(length).floor
    n_of_rows = Math.sqrt(length).ceil
    adjusted = @normalized.ljust(n_of_rows * n_of_cols)

    grid = []
    adjusted.chars.each_slice(n_of_cols) do |row|
      grid << row
    end

    grid.transpose.map(&:join).join(' ')

  end

  def build_grid

  end
end

Crypto.new("If man was meant to stay on the ground, god would have given us roots.").ciphertext
