export default class Squares {
  constructor(n) {
    this.nums = [...Array(n + 1).keys()];
    this.squareOfSum = this.nums.reduce((acc, val) => acc + val, 0) ** 2;
    this.sumOfSquares = this.nums.reduce((acc, val) => acc + val ** 2, 0);
    this.difference = this.squareOfSum - this.sumOfSquares;
  }
}
