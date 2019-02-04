const generatePrimes = (max) => {
  const sieve = [];
  const primes = [];

  for (let i = 2; i <= max; i += 1) {
    if (!sieve[i]) {
      // i has not been marked -- it is prime
      primes.push(i);
      for (let j = i * 2; j <= max; j += i) {
        sieve[j] = true;
      }
    }
  }
  return primes;
};

export class Prime {
  constructor() {
    this.primes = generatePrimes(105000);
    // should try to find a way to dynamically set max
    // or set the expected size of array it returns
  }

  nth(n) {
    if (n <= 0) throw new Error('Prime is not possible');

    return this.primes[n - 1];
  }
}
