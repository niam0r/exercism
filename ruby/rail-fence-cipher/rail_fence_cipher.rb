class RailFenceCipher
  def self.encode(str, n)
    len = str.length
    return str if len == 0 || n == 1 || n > len

    rows = Array.new(n) {Array.new(len)}
    indexes = ((0..n - 1).to_a + (1..n - 2).to_a.reverse).cycle.first(len)

    str.gsub(' ','').chars.each_with_index { |c , i| rows[indexes[i]] << c }

    rows.map(&:compact).join
  end

  def self.decode(str, n)
    len = str.length
    return str if len == 0 || n == 1

    rows = Array.new(n) {Array.new(len)}
    indexes = ((0..n - 1).to_a + (1..n - 2).to_a.reverse).cycle.first(len)
    # p indexes
    str.chars.each_with_index { |c , i| rows[indexes[i]] << c }

    p rows.map(&:compact)

  end
end

# RailFenceCipher.decode('XXXXXXXXXOOOOOOOOO', 2)
RailFenceCipher.decode('WECRLTEERDSOEEFEAOCAIVDEN', 3)

#i 0  1  2  3  4  5  6  7  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
#0 W  .  .  .  E  .  .  .  C  .  .  .  R  .  .  .  L  .  .  .  T  .  .  .  E
#1 .  E  .  R  .  D  .  S  .  O  .  E  .  E  .  F  .  E  .  A  .  O  .  C  .
#2 .  .  A  .  .  .  I  .  .  .  V  .  .  .  D  .  .  .  E  .  .  .  N  .  .

#  0  0  0  1  4  4  4  6  8  8  8  10 12 12 12 14 16 16 16 18 20 20 20 22 24

#         +1 +n +n +n +n-1
