class Luhn
  def self.valid?(str)
    return false if str.length == 1

    sum = 0
    str.gsub(' ', '').reverse.chars.each_with_index do |c, i|
      sum += i.odd? ? double(c.to_i) : c.to_i
    end
    sum % 10 == 0
  end

  private

  def self.double(n)
    doubled = n * 2
    doubled > 9 ? doubled - 9 : doubled
  end
end
