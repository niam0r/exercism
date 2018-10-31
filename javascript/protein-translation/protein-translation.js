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

// function translate(str) {

export default function translate(str) {
  const translation = [];
  if (str === undefined) { return translation; }

  const codons = str.split(/(...)/).filter(obj => obj);
  const toTranslate = codons.slice(0, codons.findIndex(findStop));

  console.log(toTranslate)

  toTranslate.forEach(codon => {
    translation.push(convertion[codon]);
    console.log(convertion[codon])
  })

  return translation;
}

function findStop(codon) {
  return stops.includes(codon);
}

// translate("AUG");
// translate("AUGUUU");
// translate("AUGUUUUCU");
// translate("AUGUUUUCUUAA");
// translate("AUGUUUUCUUAAAUG");
