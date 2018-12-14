class BaseConverter
  def self.convert(input_base, digits, output_base)
    raise ArgumentError if output_base <= 1 || input_base < 0

    digits.to_s(output_base).to_i
  end
end
