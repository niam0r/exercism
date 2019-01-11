class Say
  def initialize(input)
    range = (0..99)
    raise ArgumentError unless range.include?(input)
    @input = input
  end

  def in_english
     return 'zero' if @input.zero?
  end

  def small_numbers
    [nil] +
      %w(one two three four five
         six seven eight nine ten
         eleven twelve thirteen fourteen fifteen
         sixteen seventeen eighteen nineteen)
  end

  def decades
    [nil, nil] +
      %w(twenty thirty forty fifty
         sixty seventy eighty ninety)
  end
end
