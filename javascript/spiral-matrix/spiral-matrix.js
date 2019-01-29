
// export const SpiralMatrix = {
const SpiralMatrix = {
  ofSize(size) {
    if (size === 0) return [];
    if (size === 1) return [[1]];

    const matrix = buildMatrix(size);



    return matrix;
  }
};

const buildMatrix = (size) => Array(size).fill().map(() => Array(size).fill());

console.log(buildMatrix(4))
