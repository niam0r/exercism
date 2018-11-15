export function classify(n) {
  if (n <= 0) throw new Error('Classification is only possible for natural numbers.');
  const sum = factors(n).reduce((acc, val) => acc + val, 0);
  if (sum < n )
    return 'deficient'
  else if (sum > n)
    return 'abundant'
  else
    return 'perfect'
}

const factors = number => [...Array(number).keys()].filter(i => number % i === 0);
