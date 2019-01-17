function range(start, end) {
  if (start === end) return [start];
  return [start, ...range(start + 1, end)];
}

class Sieve {
  constructor(limit) {
    this.limit = limit;
    this.range = range(2, limit);
    this.composites = this.generateComposites();
    this.primes = this.findPrimes();
  }

  generateComposites() {
    const composites = [];
    for (let x of this.range) {
      for (let y of this.range) {
        const product = x * y;
        if (product > this.limit) break;
        composites.push(product);
      }
    }
    return composites;
  }

  findPrimes() {
    const primes = [];
    for (let n of this.range) {
      if (!this.composites.includes(n)) primes.push(n);
    }
    return primes;
  }

  // findPrimes() {
  //   let primes = this.range.filter(n => {
  //     console.log(this.composites.includes(n))
  //     !this.composites.includes(n);
  //   })
  //   console.log('primes:', primes);
  //   return primes;
  // }
}

export default Sieve;
