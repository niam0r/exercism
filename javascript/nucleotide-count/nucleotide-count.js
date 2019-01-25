const count = {
  A: 0,
  C: 0,
  G: 0,
  T: 0
}

export const NucleotideCounts = {
  parse(input) {
    return `${count['A']} ${count['C']} ${count['G']} ${count['T']}`;
  },
};
