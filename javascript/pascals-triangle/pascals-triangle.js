class Triangle {
  constructor(n) {
    this.rows = this.toRows(n);
  }

  toRows(n) {
    const rows = [];
    const firstRow = [1];
    if (n === 1) { rows.push(firstRow) }
    return rows;
  }
}

export default Triangle;
