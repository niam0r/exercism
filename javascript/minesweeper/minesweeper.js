const countMines = (lineIndex, charIndex) => {
  return 'c';
};

const process = (lines) => {
  const result = [];

  lines.forEach((line, lineIndex) => {
    [...line].forEach((char, charIndex) => {
      // if its a mine, do nothing
      if (char === '*') {
        return char;
      } else {
        // if its a space, check how many mines around and replace by count
        return countMines(lineIndex, charIndex);
      }
    })
    // join the line
  });



  return result;
};

// const annotate = (inputArray) => {
export const annotate = (inputArray) => {

  if (inputArray.every(line => /^(.)\1+$/.test(line))

    || inputArray.length === 1
  ) {
    return inputArray;
  } else {
   // return process(inputArray);
   return 'process';
  }
};

const input = [
      '   ',
      ' * ',
      '   ',
    ];

console.log(annotate(input))
