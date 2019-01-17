// const range = (start, end) => new Array(end - start + 1).fill(undefined).map((value, index) => index + start);

function range(start, end) {
    if(start === end) return [start];
    return [start, ...range(start + 1, end)];
};

class Sieve {
  constructor(max) {
    this.max = max;
    this.range = range(2, max);
    console.log(this.range)
    this.composites = this.generateComposites();
    this.primes = this.range - this.composites
  }


  generateComposites() {

  }
}

// export default Sieve;

new Sieve(10)
