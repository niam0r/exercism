const range = (start, end) => {
  if(start === end) return [start];
  return [start, ...range(start + 1, end)];
};

// export const SpiralMatrix = {
const SpiralMatrix = {
  ofSize(size) {
    const matrix = [];
    if (size === 0) return matrix;
    if (size === 1) return [[1]];

    const numbersArray = range(1, size);


    return matrix;
  }
};

const buildMatrix = (size) => Array(size).fill().map(()=>Array(size).fill());

console.log(buildMatrix(4))
