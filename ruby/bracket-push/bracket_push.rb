class Brackets
  def self.paired?(string)
    stack = []

    string.chars.each do |c|
      case c
      when '(', '{', '['
        stack << c
      when ')'
        return false unless '(' == stack.pop
      when '}'
        return false unless '{' == stack.pop
      when ']'
        return false unless '[' == stack.pop
      end
    end

    stack.empty?
  end
end
