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
    eval(replaced)

  end
end
