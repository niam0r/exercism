const generatePrimes = (max) => {
  const sieve = [];
  const primes = [];

  for (let i = 2; i <= max; ++i) {
    if (!sieve[i]) {
      // i has not been marked -- it is prime
      primes.push(i);
      for (let j = i * 2; j <= max; j += i) {
        sieve[j] = true;
      }
    }
  }
  return primes;
}

// export class Prime {
//   constructor() {
//     this.primes = [];
//   }



//   nth(n) {
//     if (n <= 0) throw new Error('Prime is not possible');
//     this.generatePrimes(n + 1);
//     return this.prime[n - 1];
//   }
// }

console.log(generatePrimes(100));
