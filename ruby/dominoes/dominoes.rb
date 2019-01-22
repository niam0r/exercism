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

  def self.valid_chain?(dominoes)
    dominoes.first.first == dominoes.last.last &&
    dominoes.each_cons(2).all? { |cons| cons.first.last == cons.last.first }
  end
end


correct_chain = [[1, 2], [2, 3], [3, 1]]
p Dominoes.valid_chain?(correct_chain)

incorrect_chain = [[0, 2], [2, 3], [3, 1]]
p Dominoes.valid_chain?(incorrect_chain)

