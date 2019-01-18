class Luhn
  def self.valid?(str)
    new(str).valid?
  end

  def initialize(str)
    @string = str.delete(' ')
  end

  def valid?
    return false unless string.match(/^\d{2,}$/)
    (calculated_sum % 10).zero?
  end

  private

  attr_reader :string

  def calculated_sum
    string.reverse.chars.each_slice(2).sum do |even, odd|
      even.to_i + (odd.to_i * 2).digits.sum
    end
  end
end
