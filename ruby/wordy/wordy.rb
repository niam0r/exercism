class WordProblem
  def initialize(question)
    @operation = question.gsub('What is ', '')[0..-2]
  end

  def answer
    operators = {
      'plus' => '+',
      'minus' => '-',
      'multiplied by' => '*',
      'divided by' => '/'
    }

    replaced = @operation.gsub(/\b(plus|minus|multiplied by|divided by)\b/, operators)
    eval(replaced) # !!! shouldn't use eval !!!
  end
end

# dbalmain's solution:
# class WordProblem
#   attr_reader :answer

#   def initialize(problem)
#     @answer = 0
#     seen = 0
#     problem.scan(/([^-0-9]+)(-?[0-9]*)/).each do |op, int|
#       seen += op.size + int.size
#       int = int.to_i
#       case op.downcase.strip
#       when 'what is'       then @answer = int
#       when 'plus'          then @answer += int
#       when 'minus'         then @answer -= int
#       when 'divided by'    then @answer /= int
#       when 'multiplied by' then @answer *= int
#       when '?'             then break
#       else
#         raise ArgumentError, "don't know how to #{op}"
#       end
#     end
#     raise ArgumentError, "couldn't parse #{problem}" if seen < problem.size
#   end
# end
