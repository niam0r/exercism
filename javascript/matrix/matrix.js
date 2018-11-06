class Matrix {
  constructor(str) {
    this.rows = str.split('\n').map(row => row.split(' ').map(Number));
    // this.columns
  }
}

export default Matrix;
