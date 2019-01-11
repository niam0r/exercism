class Luhn
  def self.valid?(str)
    clean_str = str.gsub(' ', '')
    return false if clean_str.length == 1 || clean_str.match(/\D/)

    (checksum(clean_str) % 10).zero?
  end

  private

  def self.checksum(str)
    str.reverse.chars.each_with_index.reduce(0) do |sum, (c, i)|
      sum + (i.odd? ? double(c.to_i) : c.to_i)
    end
  end

  def self.double(n)
    doubled = n * 2
    doubled > 9 ? doubled - 9 : doubled
  end
end
