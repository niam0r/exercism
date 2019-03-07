const toRange = (start, end) => {
  if(start === end) return [start];
  return [start, ...toRange(start + 1, end)];
};

export const sumOfMultiples = (factors, number) => {
// const sumOfMultiples = (factors, number) => {
  if (number === 1) return 0;

  const range = toRange(1, number - 1);

  const multiples = range.filter(el => {
    return factors.some(factor => el % factor === 0);
  })
  // console.log(multiples)

  let sum = multiples.reduce((sum, el) => sum + el);
  console.log(sum);

  return sum;
};


// sumOfMultiples([3, 5], 10)
