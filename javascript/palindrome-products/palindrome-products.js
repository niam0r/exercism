const isPalindrome = n => parseInt(n.toString().split('').reverse().join('')) === n;

const generate = (params) => {
  const minFactor = params.minFactor || 1;
  const maxFactor = params.maxFactor;
  const palindromes = {};

  for (let i = minFactor; i <= maxFactor; i++) {
    for (let j = i; j <= maxFactor; j++) {
      const factors = [i, j].sort();
      const product = i * j;
      if (isPalindrome(product) && !palindromes[product]) {
        palindromes[product] = [factors];
      } else if (isPalindrome(product)) {
        palindromes[product].push(factors);
      }
    }
  }

  return {
    largest: {
      value: Math.max(...Object.keys(palindromes)),
      factors: palindromes[Math.max(...Object.keys(palindromes))][0],
    },
    smallest: {
      value: Math.min(...Object.keys(palindromes)),
      factors: palindromes[Math.min(...Object.keys(palindromes))][0],
    },
  };
};

if (module) { module.exports = generate; }
