const padArray = (array) => {
  const newArray = array;

  newArray.map(line => ` ${line} `);
  newArray.push('   ');
  newArray.unshift('   ');
  return newArray;
}

const countAdjacentMines = (lines, lineIndex, charIndex) => {
  let count = 0;

  const paddedLines = padArray(lines);

  const adjacents = [
    paddedLines[lineIndex - 1][charIndex - 1],
    paddedLines[lineIndex - 1][charIndex],
    paddedLines[lineIndex - 1][charIndex + 1],
    paddedLines[lineIndex][charIndex - 1],
    paddedLines[lineIndex][charIndex + 1],
    paddedLines[lineIndex + 1][charIndex - 1],
    paddedLines[lineIndex + 1][charIndex],
    paddedLines[lineIndex + 1][charIndex + 1],
  ];

  return adjacents.filter(el => el === '*').length;
};

const processLines = (lines) => {
  return lines.map((line, lineIndex) => {
    return [...line].map((char, charIndex) => {
      // if its a mine, do nothing
      if (char === '*') { return char; }
      // if its a space, check how many adjacent mines and replace by count
      return countAdjacentMines(lines, lineIndex, charIndex);
    }).join('');
  });
};

const annotate = (inputArray) => {
// export const annotate = (inputArray) => {

  if (inputArray.every(line => /^(.)\1+$/.test(line))
    || inputArray.length === 1
  ) {
    return inputArray;
  }
  return processLines(inputArray);
};

const input = [
  '   ',
  ' * ',
  '   ',
];

console.log(annotate(input));
