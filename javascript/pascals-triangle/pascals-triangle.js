class Triangle {
  constructor(numRows) {
    this.rows = this.toRows(numRows);
    this.lastRow = this.rows[this.rows.length-1];
  }

  toRows(numRows) {
    const rows = [];

    for (let i = 0; i < numRows; i++) {
      rows[i] = new Array(i+1);

      for (let j = 0; j < i+1; j++) {
        if (j === 0 || j === i) {
          rows[i][j] = 1;
        } else {
          rows[i][j] = rows[i-1][j-1] + rows[i-1][j];
        }
      }
    }

    return rows;
  }
}

module.exports = Triangle;
