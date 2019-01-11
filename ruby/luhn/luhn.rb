class Luhn
  def self.valid?(str)
    clean_str = str.gsub(' ', '')
    return false if clean_str.length == 1 || clean_str.match(/\D/)

    sum = 0
    clean_str.reverse.chars.each_with_index do |c, i|
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
