export default class Triplet {
  constructor(a, b, c) {
    this.a = a;
    this.b = b;
    this.c = c;
  }

  sum() {
    const { a, b, c } = this;
    return a + b + c;
  }

  product() {
    const { a, b, c } = this;
    return a * b * c;
  }

  isPythagorean() {
    const { a, b, c } = this;
    return a * a + b * b === c * c;
  }

  static where(conditions) {
    return new Triplets(conditions).toArray();
  }
}

class Triplets {
  constructor(conditions) {
    this.min = conditions.minFactor || 1;
    this.max = conditions.maxFactor;
    this.sum = conditions.sum;
  }

  toArray() {
    const triplets = [];
    const { min, max } = this;
    for (let a = min; a < max - 1; a++) {
      for (let b = a + 1; b < max; b++) {
        for (let c = b + 1; c <= max; c++) {
          let triplet = new Triplet(a, b, c);
          if (this.isAcceptable(triplet)) {
            triplets.push(triplet);
          }
        }
      }
    }
    return triplets;
  }

  isAcceptable(triplet) {
    return triplet.isPythagorean() && (!this.sum || triplet.sum() === this.sum);
  }
}
