// const range = (start, end) => new Array(end - start + 1).fill(undefined).map((value, index) => index + start);

function range(start, end) {
    if(start === end) return [start];
    return [start, ...range(start + 1, end)];
};

class Sieve {
  constructor(limit) {
    this.limit = limit;
    this.range = range(2, limit);
    console.log('this.range:', this.range);
    this.composites = this.generateComposites();
    this.primes = this.findPrimes();
  }

  generateComposites() {
    const composites = [];
    for (let x = 2; x < this.limit; x++) {
      for (let y = 2; y < this.limit; y++) {
        let product = x * y;
        if (product > this.limit) break;
        composites.push(product);
      }
    }
    console.log('composites:', composites);
    return composites;
  }

  findPrimes() {
    let primes = this.range.filter(n => {
      !this.composites.includes(n);
    })
    console.log('primes:', primes);
    return primes;
  }
}

// export default Sieve;

new Sieve(10)
// const test = new Sieve(10)
// console.log('')
