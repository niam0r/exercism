export const largestProduct = (string, length) => {
  const products = [];
  for (let i = 0; i <= string.length - length; i++) {
    let cons = string.substr(i, length).split('').map(char => parseInt(char, 10))
    products.push(cons[0] * cons[1]);
  }

  return Math.max(...products);
};
