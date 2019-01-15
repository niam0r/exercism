class Luhn
  def self.valid?(str)
    Luhn.new(str).valid?
  end

  def initialize(str)
    @string = str.tr(' ', '')
  end

  def valid?
    valid_format? && (checksum % 10).zero?
  end

  private

  def valid_format?
    @string.match(/^\d{2,}$/)
  end

  def checksum
    @string.reverse.chars.each_with_index.reduce(0) do |sum, (c, i)|
      sum + (i.odd? ? double(c.to_i) : c.to_i)
    end
  end

  def double(n)
    doubled = n * 2
    doubled > 9 ? doubled - 9 : doubled
  end
end
