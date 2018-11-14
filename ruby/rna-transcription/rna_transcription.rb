class Complement
  def self.of_dna(str)
    str.gsub(/[ACGT]/, 'A' => 'U', 'C' => 'G', 'G' => 'C', 'T' => 'A')
  end
end
