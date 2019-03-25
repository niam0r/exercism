const countMines = (lines, lineIndex, charIndex) => {
  let count = 0;
  const adjacents = [
    lines[lineIndex - 1][charIndex - 1],
    lines[lineIndex - 1][charIndex],
    lines[lineIndex - 1][charIndex + 1],
    lines[lineIndex][charIndex - 1],
    lines[lineIndex][charIndex + 1],
    lines[lineIndex + 1][charIndex - 1],
    lines[lineIndex + 1][charIndex],
    lines[lineIndex + 1][charIndex + 1],
  ];

  return adjacents.filter(el => el === '*').length;
};

const processLines = (lines) => {
  return lines.map((line, lineIndex) => {
    return [...line].map((char, charIndex) => {
      // if its a mine, do nothing
      if (char === '*') { return char; }
      // if its a space, check how many mines around and replace by count
      return countMines(lines, lineIndex, charIndex);
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
