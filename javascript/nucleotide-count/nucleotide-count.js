export const NucleotideCounts = {
  parse(input) {
    const count = {
      A: 0, C: 0, G: 0, T: 0
    };
    input.split('').forEach(char => {
      if (count[char] === undefined) { throw new Error('Invalid nucleotide in strand'); }
      count[char] += 1;
    });
    return `${count.A} ${count.C} ${count.G} ${count.T}`;
  },
};
