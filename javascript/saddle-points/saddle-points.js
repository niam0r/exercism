export class Matrix {
  constructor(strInput) {
    this.rows = strInput.split(/\n/).map(str => str.split(' ').map(char => parseInt(char, 10)));
    this.columns = this.rows[0].map((col, i) => this.rows.map(row => row[i]));
    this.saddlePoints = [];
    this.findSaddlePoints();
  }

  findSaddlePoints() {
    this.rows.forEach((row, rowIndex) => {
      row.forEach((element, columnIndex) => {
        const largestOfRow = Math.max(...row);
        const smallestOfColumn = Math.min(...this.columns[columnIndex]);
        if (element === largestOfRow && element === smallestOfColumn) {
          this.saddlePoints.push([rowIndex, columnIndex]);
        }
      });
    });
  }
}
