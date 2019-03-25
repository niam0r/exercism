const padArray = (array) => {
  const newArray = array;
  const topOrBottom = ' '.repeat(array[0].length);
  newArray.push(topOrBottom);
  newArray.unshift(topOrBottom);
  return newArray.map(line => ` ${line} `);
};

const countAdjacentMines = (lines, lineIndex, charIndex) => {
  console.log({lineIndex})
  console.log({charIndex})
  let count = 0;

  const paddedLines = padArray(lines);

  console.log(paddedLines)

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
      return countAdjacentMines(lines, lineIndex + 1, charIndex + 1);
    }).join('');
  });
};

// const annotate = (inputArray) => {
export const annotate = (inputArray) => {

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

// console.log(annotate(input));
