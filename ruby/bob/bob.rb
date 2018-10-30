class Bob
  def self.hey(line)
    if line.strip.empty?
      "Fine. Be that way!"
    elsif line == line.upcase && line.end_with?("?") && line.match(/[A-Z]+/)
      "Calm down, I know what I'm doing!"
    elsif line.strip.end_with?("?")
      "Sure."
    elsif line.delete('0-9') == line.delete('0-9').upcase && line.match(/[A-Za-z]+/)
      "Whoa, chill out!"
    else
      "Whatever."
    end
  end
end
