const process = (lines) => {
  const result = [];

  return result;
};

// const annotate = (inputArray) => {
export const annotate = (inputArray) => {
  if (inputArray.every(line => line.match(/\s/g)) || inputArray.length === 1) {
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
