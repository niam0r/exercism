export class Board {
  constructor(board) {
    this.board = board;
  }

  winner() {
    if (this.board.every(row => !row.includes(/X|0/))) return '';

  }
}

