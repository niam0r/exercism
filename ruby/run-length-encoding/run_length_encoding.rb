class RunLengthEncoding
  def self.encode(string)
    # return string if string.empty?
    string.gsub(/(.)\1+/) { |chunk| "#{chunk.length}#{chunk[0]}"}
  end

  def self.decode(string)
    string.gsub(/2AB3CD4E/) do |chunk|
      "#{chunk[0] * chunk[1]}"
   end
  end
end
