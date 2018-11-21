class RailFenceCipher
  def self.encode(str, n)
    len = str.length
    str if len == 0 || n == 1

    rows = Array.new(n) {Array.new(len)}
    indexes = ((0..n - 1).to_a + (0..n - 2).to_a.reverse) * len


    p indexes

    # str.gsub(' ','').chars.each_with_index do |c , i|
    #  rows[i] << c if i < n

    # end

  end

  # def self.decode(str, n)

  # end
end

RailFenceCipher.encode('WE ARE DISCOVERED FLEE AT ONCE', 3)

#i 0  1  2  3  4  5  6  7  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
#0 W  .  .  .  E  .  .  .  C  .  .  .  R  .  .  .  L  .  .  .  T  .  .  .  E
#1 .  E  .  R  .  D  .  S  .  O  .  E  .  E  .  F  .  E  .  A  .  O  .  C  .
#2 .  .  A  .  .  .  I  .  .  .  V  .  .  .  D  .  .  .  E  .  .  .  N  .  .

#  0  0  0  1  4  4  4  6  8  8  8  10 12 12 12 14 16 16 16 18 20 20 20 22 24

#         +1 +n +n +n +n-1
