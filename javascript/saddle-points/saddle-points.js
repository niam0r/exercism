 export class Matrix {
  constructor(strInput) {
    this.rows = strInput.split(/\n/).map(str => str.split(' ').map(char => parseInt(char, 10)));
    this.columns = this.rows[0].map((col, i) => this.rows.map(row => row[i]));
    this.saddlePoints = this.findSaddlePoints();
  }


  findSaddlePoints() {

  }
}

// const matrix = new Matrix('1 2 3\n4 5 6\n7 8 9\n8 7 6');
// console.log(matrix)
