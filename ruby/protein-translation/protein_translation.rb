class InvalidCodonError < StandardError; end

class Translation
  CONVERTION = {
    'AUG' => 'Methionine',
    'UUU' => 'Phenylalanine',
    'UUC' => 'Phenylalanine',
    'UUA' => 'Leucine',
    'UUG' => 'Leucine',
    'UCU' => 'Serine',
    'UCC' => 'Serine',
    'UCA' => 'Serine',
    'UCG' => 'Serine',
    'UAU' => 'Tyrosine',
    'UAC' => 'Tyrosine',
    'UGU' => 'Cysteine',
    'UGC' => 'Cysteine',
    'UGG' => 'Tryptophan',
    'UAA' => 'STOP',
    'UAG' => 'STOP',
    'UGA' => 'STOP'
  }

  def self.of_codon(codon)
    raise InvalidCodonError if CONVERTION[codon].nil?

    CONVERTION[codon]
  end

  def self.of_rna(strand)
    strand.scan(/.../).each_with_object([]) do |codon, output|
      return output if CONVERTION[codon] == 'STOP'

      output << of_codon(codon)
    end
  end
end
