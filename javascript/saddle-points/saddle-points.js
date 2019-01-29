 export class Matrix {
  constructor(strInput) {
    this.rows = this.buildRows(strInput);
    this.columns = this.transpose(this.rows);
    this.saddlePoints = this.findSaddlePoints();
  }

  buildRows(strInput) {
    return strInput.split(/\n/).map(str => str.split(' ').map(char => parseInt(char, 10)));
  }

  transpose(rows) {
    return rows[0].map((col, i) => this.rows.map(row => row[i]));
  }

  findSaddlePoints() {

  }
}

// const matrix = new Matrix('1 2 3\n4 5 6\n7 8 9\n8 7 6');
// console.log(matrix)
