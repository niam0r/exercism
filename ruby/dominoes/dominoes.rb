class Dominoes
  def self.chain?(dominoes)
    return true if dominoes.empty?
    dominoes.length == 1 && dominoes[0][0] == dominoes[0][1]

    # first = dominoes.first.shift
    # last = dominoes.last.pop
    # false if first != last

    # dominoes.each do |d|

    # end
  end
end
