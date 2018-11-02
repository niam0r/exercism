export function compute(seq1, seq2) {
  if (seq1.length != seq2.length) { throw new Error('left and right strands must be of equal length') }
  let diff = 0;
  for (var i = 0; i < seq1.length; i++) {
    if ([...seq1][i] !== seq2.charAt(i)) { diff++ }
  }
  return diff
}
