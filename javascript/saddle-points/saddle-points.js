export class Matrix {
  constructor(strInput) {
    this.rows = strInput.split(/\n/).map(str => str.split(' ').map(char => parseInt(char, 10)));
    this.colums = this.transpose(this.rows);
    this.saddlePoints = this.findSaddlePoints();
  }

  transpose(rows) {

  }

  findSaddlePoints() {

  }
}
