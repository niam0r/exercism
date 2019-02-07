export class Board {
  constructor(board) {
    this.board = board;
  }

  winner() {
    const { board } = this;
    if (board.every(row => !row.match(/X|O/))) return '';
    if (board.length === 1 && board[0] == 'X' || board[0] == 'O') return board[0];

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
