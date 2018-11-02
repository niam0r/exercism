export function compute(seq1, seq2) {
  const ar1 = seq1.split(''), ar2 = seq2.split('');
  if (seq1.length != seq2.length) { throw new Error('left and right strands must be of equal length') }
  let diff = 0;
  for (var i = 0; i < seq1.length; i++) {
    if (ar1[i] !== ar2[i]) { diff++ }
  }
  return diff
}
