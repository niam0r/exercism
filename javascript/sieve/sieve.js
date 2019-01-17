// const range = (start, end) => new Array(end - start + 1).fill(undefined).map((value, index) => index + start);

function range(start, end) {
    if(start === end) return [start];
    return [start, ...range(start + 1, end)];
};

class Sieve {
  constructor(limit) {
    this.limit = limit;
    this.range = range(2, limit);
    this.composites = this.generateComposites();
    this.primes = this.range - this.composites
  }

  generateComposites() {
    const composites = [];
    this.range.forEach(x => {
      this.range.forEach(y => {
        let product = x * y;
        break if product > this.limit;
        composites.pust(product);
      })
    });

    return composites;
  }
}

export default Sieve;

// const test = new Sieve(10)
// console.log('')
