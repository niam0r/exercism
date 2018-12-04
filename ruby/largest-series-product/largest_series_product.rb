class Series
  def initialize(str)
    raise ArgumentError if str == '' || str.scan(/\D/).any?
    @serie = str.chars.map(&:to_i)
  end

  def largest_product(n)
    raise ArgumentError if n > @serie.length || n < 0
    @serie.each_cons(n).map { |cons| cons.reduce(1, :*) }.max
  end
end
