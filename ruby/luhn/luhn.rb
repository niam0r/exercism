class Luhn
  def self.valid?(str)
    Luhn.new(str).valid?
  end

  def initialize(str)
    @string = str.tr(' ', '')
  end

  def valid?
    correct_length_and_only_digits && (checksum(@string) % 10).zero?
  end

  private

  def correct_length_and_only_digits
    @string.match(/^\d{2,}$/)
  end

  def checksum(str)
    str.reverse.chars.each_with_index.reduce(0) do |sum, (c, i)|
      sum + (i.odd? ? double(c.to_i) : c.to_i)
    end
  end

  def double(n)
    doubled = n * 2
    doubled > 9 ? doubled - 9 : doubled
  end
end
