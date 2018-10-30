class Series
  def initialize(serie)
    @serie = serie.chars.map(&:to_i)
  end

  def slices(n)
    raise ArgumentError if n > @serie.size
    result = []
    @serie.each_cons(n) { |slice| result << slice.join.to_s}
    result
  end
end
