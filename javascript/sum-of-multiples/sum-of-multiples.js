const toRange = (start, end) => {
  if (start === end) return [start];
  return [start, ...toRange(start + 1, end)];
};

export const sumOfMultiples = (factors, number) => {
  if (number === 1) return 0;

  const smallestFactor = Math.min(...factors)

  const range = toRange(smallestFactor, number - 1);

  const multiples = range.filter(el => factors.some(factor => el % factor === 0));

  return multiples.reduce((acc, el) => acc + el);
};
