class Crypto
  def initialize(plaintext)
    @normalized = plaintext.downcase.gsub(/\W\s*/, '')
  end

  def ciphertext
    length = @normalized.length
    return @normalized if length <= 1

    n_of_cols = Math.sqrt(length).ceil
    n_of_rows = Math.sqrt(length).floor

    if n_of_cols * n_of_rows > length
      total_grid_length = n_of_cols * n_of_rows
    else
      total_grid_length = n_of_cols ** 2
    end

    adjusted = @normalized.ljust(total_grid_length)

    grid = []
    adjusted.chars.each_slice(n_of_cols) do |row|
      grid << row
    end

    # p grid

    encrypted = grid.transpose.map(&:join).join(' ')

    # p encrypted
  end
end
