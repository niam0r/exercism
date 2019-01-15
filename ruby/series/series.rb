class Series
  def initialize(serie)
    @serie = serie.chars
  end

  def slices(n)
    raise ArgumentError if n > @serie.size

    @serie.each_cons(n).map { |slice| slice.join.to_s}
  end
end
