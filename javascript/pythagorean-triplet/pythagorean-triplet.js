export default class Triplet {
  constructor(a, b, c) {
    this.a = a;
    this.b = b;
    this.c = c;
  }

  sum() {
    return this.a + this.b + this.c;
  }

  product() {
    return this.a * this.b * this.c;
  }

  isPythagorean() {
    return this.a ** 2 + this.b ** 2 === this.c ** 2;
  }

  static where(conditions) {
    return new Triplets(conditions);
  }
}

class Triplets {
  constructor(conditions) {
    this.minFactor = conditions.minFactor;
    this.maxFactor = conditions.maxFactor;
  }




}
