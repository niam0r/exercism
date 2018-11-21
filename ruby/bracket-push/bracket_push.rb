class Brackets
  def self.paired?(str)
    match = { '(' => ')', '[' => ']', '{' => '}' }
    cleaned = str.gsub(' ', '').gsub(/({})*(\[\])*(\(\))*/, '')
    cleaned.empty?

    results = []
    cleaned.each_char.with_index do |c, i|
      results << (c == match[cleaned.length - i - 1])
    end
    # p results
    results.all?
  end
end

# Brackets.paired?('{[])')
# Brackets.paired?('{ }')
