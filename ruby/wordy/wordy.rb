class WordProblem
  def initialize(question)
    @operation = question.gsub('What is ', '').split[0..-2]
  end

  def answer
    operators = {
      'plus': '+',
      'minus': '-',
      'multiplied': '*',
      'divided': '/'
    }

    operators.each do |operator|

    end
  end
end
