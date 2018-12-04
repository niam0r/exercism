class Series
  def initialize(str)
    @serie = str.chars.map(&:to_i)
  end

  def largest_product(n)
    products = []
    @serie.each_cons(n) do |cons|
      cons.
    end
  end
end

# serie = Series.new('29')
# p serie.serie
