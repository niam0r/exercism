class Series
  def initialize(str)
    @serie = str.chars.map(&:to_i)
  end

  def largest_product(n)
    @serie.each_cons(n).map do |cons|
      cons.reduce(1, :*)
    end.max
  end
end

# serie = Series.new('29')
# p serie.serie
