class Dominoes
  def self.chain?(dominoes)
    return true if dominoes.empty?
    dominoes.length == 1 && dominoes[0][0] == dominoes[0][1]

    # permutations = dominoes.permutation.to_a
    # need to permute all these arrays too to get all possible arrangement

  end

  def self.valid_chain?(dominoes)
    dominoes.first.first == dominoes.last.last &&
    dominoes.each_cons(2).all? { |cons| cons.first.last == cons.last.first }
  end
end

