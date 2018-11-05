class RunLengthEncoding
  def self.encode(string)
    string.gsub(/(.)\1+/) { |chunk| "#{chunk.length}#{chunk[0]}"}
  end

  def self.decode(string)
    string.scan(/(\d*)(.)/).map do |count, char|
      count.empty? ? char : char * count.to_i
    end.join
  end
end
