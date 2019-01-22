class Brackets
  def self.paired?(str)
    count = {
       '(' => 0,
       '[' => 0,
       '{' => 0
    }

    str.chars.each do |c|
      case c
      when '('
        count['('] += 1
      when ')'
        count['('] -= 1
      when '['
        count['['] += 1
      when ']'
        count['['] -= 1
      when '{'
        count['{'] += 1
      when '}'
        count['{'] -= 1
      end
    end

    p count

    count.values.sum == 0
  end
end

# Brackets.paired?('{}[[]](')
# Brackets.paired?('{]')



# first iteration
# class Brackets
#   def self.paired?(str)
#     match = { '(' => ')', '[' => ']', '{' => '}' }
#     brackets_only = str.gsub(/[^\(\)\{\}\[\]}]/, '')
#     cleaned = brackets_only.gsub(/({})*(\[\])*(\(\))*/, '').gsub(/({})*(\[\])*(\(\))*/, '')
#     cleaned.empty?
#     len = cleaned.length
#     return false if len.odd?
#     results = []
#     cleaned[0..(len / 2 - 1)].each_char.with_index do |c, i|
#       results << (match[c] == cleaned.reverse[i])
#     end
#     results.all?
#   end
# end

