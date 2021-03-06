export const largestProduct = (string, length) => {
  if (length < 0 || string.match(/\D/)) throw new Error('Invalid input.');
  if (length === 0) return 1;

  const products = [];
  for (let i = 0; i <= string.length - length; i++) {
    const cons = string.substr(i, length).split('').map(char => parseInt(char, 10));
    products.push(cons.reduce((a, b) => a * b));
  }

  return Math.max(...products);
};
