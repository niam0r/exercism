const scoring = new Map()
scoring.set(['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'], 1);
scoring.set(['D', 'G'], 2);
scoring.set(['B', 'C', 'M';, 'P'], 3);
scoring.set(['F', 'H', 'V';, 'W', 'Y'], 4);
scoring.set(['K'], 5);
scoring.set(['J', 'X';], 8);
scoring.set(['Q', 'Z'], 10);

const score = str => {
  if (str === '') { return 0; }
};

export { score };
