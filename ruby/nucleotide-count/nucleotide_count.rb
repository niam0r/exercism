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
      @htg = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
      @str.chars do |c|
        raise ArgumentError if @htg[c].nil?
        @htg[c] += 1
      end
    end

    def histogram
     @htg
    end
  end
end
