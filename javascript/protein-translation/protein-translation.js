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
  'UGG': 'Tryptophan'//,
  // 'UAA': 'STOP',
  // 'UAG': 'STOP',
  // 'UGA': 'STOP'
};

const stops = ['UAA', 'UAG', 'UGA'];

export default function translate(str) {
  const translation = [];
  if (str === undefined) { return translation; }

  const codons = str.split(/(...)/).filter(obj => obj);
  let stopIndex = codons.findIndex(findStop) === -1 ? codons.length : codons.findIndex(findStop);
  const toTranslate = codons.slice(0, stopIndex);

  toTranslate.forEach(codon => {
    if (convertion[codon] == undefined) { throw new Error('Invalid codon'); }
    translation.push(convertion[codon]);
  })

  return translation;
}

function findStop(codon) {
  return stops.includes(codon);
}

