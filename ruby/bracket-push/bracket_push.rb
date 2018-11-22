class Brackets
  def self.paired?(str)
    match = { '(' => ')', '[' => ']', '{' => '}' }
    brackets_only = str.gsub(/[^\(\)\{\}\[\]}]/, '')
    cleaned = brackets_only.gsub(/({})*(\[\])*(\(\))*/, '').gsub(/({})*(\[\])*(\(\))*/, '')
    cleaned.empty?
    len = cleaned.length
    return false if len.odd?
    results = []
    cleaned[0..(len / 2 - 1)].each_char.with_index do |c, i|
      results << (match[c] == cleaned.reverse[i])
    end
    results.all?
  end
end

