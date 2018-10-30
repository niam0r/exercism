class PhoneNumber
  def self.clean(input)
    cleaned = input.gsub(/\D/, '')
    cleaned[0] = '' if cleaned.start_with?("1")
    cleaned unless cleaned.length != 10 || cleaned.start_with?("0", "1") || ["0", "1"].include?(cleaned[3])
  end
end
