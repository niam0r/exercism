class Triangle {
  constructor(...sides) {
    this.sides = sides;
  }

  kind() {
    if (this.isIllegal()) throw new TypeError('illegal');

    if (this.uniqueSidesLength() === 1) return 'equilateral';

    if (this.uniqueSidesLength() === 2) return 'isosceles';

    return 'scalene';
  }

  isIllegal() {
    return this.violatesInequality() || this.hasImpossibleSides();
  }

  violatesInequality() {
    const [a, b, c] = this.sides;
    return a + b < c || a + c < b || b + c < a;
  }

  hasImpossibleSides() {
    const [a, b, c] = this.sides;
    return a <= 0 || b <= 0 || c <= 0;
  }

  uniqueSidesLength() {
    return new Set(this.sides).size;
  }
}

export default Triangle;
