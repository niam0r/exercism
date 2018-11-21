class Nucleotide
  class << self

    def from_dna(str)
      @str = str
      make_h
      self
    end

    def count(letter)
      @htg[letter]
    end

    def make_h
      @htg = {}
      @str.chars do |l|
        @htg[l].nil? ? @htg[l] = 1 : @htg[l] += 1
      end
      @htg
    end

    def histogram
     @htg
    end
  end
end

p Nucleotide.from_dna('CCCCC').count('C')
# p Nucleotide.from_dna('CCCCC').histogram
