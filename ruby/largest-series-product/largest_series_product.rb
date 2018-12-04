class Series
  def initialize(str)
    raise ArgumentError if str == '' || str.scan(/\D/) != []
    @serie = str.chars.map(&:to_i)
  end

  def largest_product(n)
    raise ArgumentError if n > @serie.length || n < 0
    @serie.each_cons(n).map do |cons|
      cons.reduce(1, :*)
    end.max
  end
end
