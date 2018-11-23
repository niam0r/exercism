class Dominoes
  def self.chain?(dominoes)
    return true if dominoes.empty?
    dominoes.length == 1 && dominoes[0][0] == dominoes[0][1]

  end
end
