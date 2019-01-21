class Crypto
  def initialize(plaintext)
    @normalized = plaintext.downcase.gsub(/\W\s*/, '')
  end

  def ciphertext
    length = @normalized.length
    return @normalized if length <= 1

    adjusted = adjusted_input(length)

    grid = []
    adjusted.chars.each_slice(@n_of_cols) do |row|
      grid << row
    end

    grid.transpose.map(&:join).join(' ')
  end

  def adjusted_input(length)
    @n_of_cols = Math.sqrt(length).ceil

    total_grid_length =
      if @n_of_cols * (@n_of_cols - 1) > length
        @n_of_cols * (@n_of_cols - 1)
      else
        @n_of_cols**2
      end

    @normalized.ljust(total_grid_length)
  end
end
