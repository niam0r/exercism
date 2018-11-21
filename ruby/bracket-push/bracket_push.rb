class Brackets
  def self.paired?(str)
    match = { '(' => ')', '[' => ']', '{' => '}' }
    cleaned = str.gsub(' ', '').gsub(/({})*(\[\])*(\(\))*/, '').gsub(/({})*(\[\])*(\(\))*/, '')
    cleaned.empty?
    len = cleaned.length
    len.odd?
    # p cleaned
    results = []
    cleaned.each_char.with_index do |c, i|
      for i in 0..(len / 2)
        results << (c == match[len - i - 1])
      end
    end
    # p results
    results.all?
  end
end

# Brackets.paired?('{[])')
# Brackets.paired?('{ }')
Brackets.paired?('{[]}')
