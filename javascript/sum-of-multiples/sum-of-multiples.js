const toRange = n => [...Array(n).keys()];

export const sumOfMultiples = (factors, number) => {
  if (number === 1) return 0;

  const smallestFactor = Math.min(...factors);

  const range = toRange(smallestFactor, number - 1);

  const multiples = range.filter(el => factors.some(factor => el % factor === 0));

  return multiples.reduce((acc, el) => acc + el);
};

// // exercism's example:
// export const sumOfMultiples = (factors, limit) => {
//   const multiples = {};
//   factors.forEach((factor) => {
//     for (let ii = factor; ii < limit; ii += factor) {
//       multiples[ii] = ii;
//     }
//   });

//   return Object.keys(multiples).reduce((prev, curr) => prev + multiples[curr], 0);
// };
