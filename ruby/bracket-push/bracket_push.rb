class Brackets
  def self.paired?(str)
    match = { '(' => ')', '[' => ']', '{' => '}' }
    cleaned = str.gsub(' ', '').gsub(/({})*(\[\])*(\(\))*/, '').gsub(/({})*(\[\])*(\(\))*/, '')
    cleaned.empty?
    # p cleaned
    len = cleaned.length
    return false if len.odd?
    results = []
    cleaned[0..(len / 2 - 1)].each_char.with_index do |c, i|
      results << (match[c] == cleaned.reverse[i])
    end
    results.all?
  end
end

