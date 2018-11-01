const convertion = {
  'AUG': 'Methionine',
  'UUU': 'Phenylalanine',
  'UUC': 'Phenylalanine',
  'UUA': 'Leucine',
  'UUG': 'Leucine',
  'UCU': 'Serine',
  'UCC': 'Serine',
  'UCA': 'Serine',
  'UCG': 'Serine',
  'UAU': 'Tyrosine',
  'UAC': 'Tyrosine',
  'UGU': 'Cysteine',
  'UGC': 'Cysteine',
  'UGG': 'Tryptophan',
  'UAA': 'STOP',
  'UAG': 'STOP',
  'UGA': 'STOP'
};

export default function translate(str) {
  const translation = [];
  if (str === undefined) { return translation; }

  const codons = str.split(/(...)/).filter(obj => obj);

  for (let codon of codons) {
    if (convertion[codon] == undefined) { throw new Error('Invalid codon'); }
    if (convertion[codon] == 'STOP') { break; }
    translation.push(convertion[codon]);
  }

  return translation;
}



