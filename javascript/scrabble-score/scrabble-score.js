const scoring = new Map()
scoring.set(['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'], 1);
scoring.set(['D', 'G'], 2);
scoring.set(['B', 'C', 'M', 'P'], 3);
scoring.set(['F', 'H', 'V', 'W', 'Y'], 4);
scoring.set(['K'], 5);
scoring.set(['J', 'X'], 8);
scoring.set(['Q', 'Z'], 10);

const scoreLetter = letter => {
  let points = 0;
  scoring.forEach( function(val, key) {
    if (key.includes(letter.toUpperCase())) {
      points += val
    }
  });
  return points;
}

const score = str => {
  let total = 0;
  if (str === '') { return total; }
  str.split('').forEach(letter => {
    total += scoreLetter(letter);
  })
  return total;
};

export { score };
