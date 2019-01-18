class Luhn
  def self.valid?(str)
    new(str).valid?
  end

  def initialize(str)
    @string = str.delete(' ')
  end

  def valid?
    valid_format? && (checksum % 10).zero?
  end

  private

  attr_reader :string

  def valid_format?
    string.match(/^\d{2,}$/)
  end

  def checksum
    string.reverse.chars.each_slice(2).sum do |even, odd|
      even.to_i + (odd.to_i * 2).digits.sum
    end
  end
end
