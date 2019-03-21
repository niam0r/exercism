const countMines = (lineIndex, charIndex) => {

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
  if (inputArray.every(line => line.match(/\s/g))
    || inputArray.every(line => line.match(/\*/g))
    || inputArray.length === 1
  ) {
    return inputArray;
  } else {
   return process(inputArray);
  }
};

// const input = [
//       '   ',
//       '   ',
//       '   ',
//     ];

// console.log(input.every(line => line.match(/\s/g)))

// // console.log(annotate(input))
