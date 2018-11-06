class Triangle {
  constructor(n) {
    this.rows = this.toRows(n);
  }

  toRows(n) {
    const rows = [];
    const row = [1];

    do {
      rows.push(row);
      // row.push(1);
      n -= 1;
    } while ( n > 1 );

    return rows;
  }
}

module.exports = Triangle;
