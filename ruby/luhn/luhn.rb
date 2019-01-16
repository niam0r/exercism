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
    @string.reverse.chars.each_slice(2).sum(0) do |cons|
      cons.first.to_i + double(cons.last.to_i)
    end
  end

  def double(n)
    doubled = n * 2
    doubled > 9 ? doubled - 9 : doubled
  end
end
