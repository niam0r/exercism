const buildMatrix = (size) => Array(size).fill().map(() => Array(size).fill());

export const SpiralMatrix = {
  ofSize(size) {
    if (size === 0) return [];
    if (size === 1) return [[1]];

    const matrix = buildMatrix(size);
    let currentNumber = 1;
    let x = 0; // horizontal
    let y = 0; // vertical
    let dx = 0; // horizontal direction
    let dy = 1; // vertical direction

    while (currentNumber <= size * size) {
      matrix[x][y] = currentNumber++;
      if (y + dy === size || x + dx === size || y + dy === -1 || matrix[x + dx][y + dy]) {
        const dxCopy = dx;
        dx = dy;
        dy = -dxCopy;
      }
      x += dx;
      y += dy;
    }

    return matrix;
  }
};
