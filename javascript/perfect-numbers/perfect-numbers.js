export function classify(n) {
  if (n <= 0) throw new Error('Classification is only possible for natural numbers.');
  const sum = factors(n).reduce((acc, val) => acc + val, -n);
  if (sum === n) return 'perfect'
  if (sum < n ) return 'deficient'
  if (sum > n) return 'abundant'
}

const factors = number => [...Array(number + 1).keys()].filter(i => number % i === 0);
