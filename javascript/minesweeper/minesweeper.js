const countAdjacentMines = (lines, lineIndex, charIndex) => {
  const adjacentsCoords = [
    { row: lineIndex - 1, col: charIndex - 1 },
    { row: lineIndex - 1, col: charIndex },
    { row: lineIndex - 1, col: charIndex + 1 },
    { row: lineIndex, col: charIndex - 1 },
    { row: lineIndex, col: charIndex + 1 },
    { row: lineIndex + 1, col: charIndex - 1 },
    { row: lineIndex + 1, col: charIndex },
    { row: lineIndex + 1, col: charIndex + 1 },
  ];

  const height = lines.length;
  const width = lines[0].length;
  const filteredCoords = adjacentsCoords.filter((coords) => {
    const { row, col } = coords;
    return row >= 0 && row < height && col >= 0 && col <= width;
  });

  const count = filteredCoords.reduce((acc, coords) => {
    return lines[coords.row][coords.col] === '*' ? acc + 1 : acc;
  }, 0);

  return count === 0 ? ' ' : count;
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

// const annotate = (inputArray) => {
export const annotate = (inputArray) => {
  if (inputArray.every(line => /^(.)\1+$/.test(line))
  ) { return inputArray; }

  return processLines(inputArray);
};
