const convertion = {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U'
}

export function toRna(dna) {
  let rna = '';
  if (dna == '') { return rna; }
  dna.split('').forEach(char => {
    if (convertion[char] == undefined) { throw new Error('Invalid input DNA.') };
    rna += convertion[char];
  })
  return rna;
}
