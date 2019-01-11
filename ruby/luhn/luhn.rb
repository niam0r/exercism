class Luhn
  def self.valid?(str)
    false if str.length == 1

  end

  private

  def double(n)
    doubled = n * 2
    doubled > 9 ? doubled - 9 : doubled
  end
end
