export default class Triangle {
  constructor(x, y, z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }

  kind() {
    if (this.x === this.y && this.x === this.z) { return 'equilateral'; }
    if (this.x === this.y || this.x === this.z || this.y === this.z ) { return 'isosceles'; }

  }
}
