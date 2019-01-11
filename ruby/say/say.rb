class Say
  def initialize(n)
    raise ArgumentError unless (0..99).include?(n)
    @n = n
  end

  def in_english
    'zero'
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
