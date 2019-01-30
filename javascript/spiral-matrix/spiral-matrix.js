
// export const SpiralMatrix = {
const SpiralMatrix = {
  ofSize(size) {
    if (size === 0) return [];
    if (size === 1) return [[1]];

    const matrix = buildMatrix(size);
    let currentNumber = 1;
    let x = 0; // horizontal
    let y = 0; // vertical
    let dx = 1; // horizontal
    let dy = 0; // vertical

    for (currentNumber <= (size * size)) {
      matrix[x][y] = currentNumber++

    }
    return matrix;
  }
};

const buildMatrix = (size) => Array(size).fill().map(() => Array(size).fill());

console.log(buildMatrix(4))
