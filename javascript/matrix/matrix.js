class Matrix {
  constructor(str) {
    this.rows = str.split('\n').map(row => row.split(' ').map(Number));
    this.columns = this.transpose(this.rows);
  }

  transpose(array) {
    return array[0].map((col, i) => array.map(row => row[i]));
  }
}

export default Matrix;
