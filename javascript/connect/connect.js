export class Board {
  constructor(board) {
    this.board = board;
  }

  winner() {
    if (this.board.every(row => !row.match(/X|0/))) return '';

  }
}

// const board = [
    //   '. . . . .',
    //   ' . . . . .',
    //   '  . . . . .',
    //   '   . . . . .',
    //   '    . . . . .',
    // ];

// console.log((board.every(row => !row.match(/X|0/))))
