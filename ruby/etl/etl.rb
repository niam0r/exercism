class ETL
  def self.transform(old)
    new_h = {}
    old.each do |score, values|
      values.each { |value| new_h[value.downcase] = score }
    end
    return new_h
  end
end

class ETL
  def self.transform(old_scoreboard)
    old_scoreboard.each_with_object({}) do |(score, letters), new_scoreboard|
      letters.each { |letter| new_scoreboard[letter.downcase] = score }
    end
  end
end
