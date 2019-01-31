const alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];

// .A.
// B.B
// .A.

// ··A··    position = 2
// ·B·B·    size = 5
// C···C
// ·B·B·
// ··A··

// export class Diamond {
class Diamond {
  makeDiamond(letter) {
    const position = alphabet.indexOf(letter); // also middle
    const size = (position * 2) + 1;
    const grid = Array(size).fill().map(() => Array(size).fill(' '));
    console.log(grid);

    for(let i = 0; i <= position ; i += 1) {
      grid[i][position] = alphabet[i]
      grid[size - i - 1][position] = alphabet[i]

    }

    console.log(grid)

    return grid;
  }
}

const diamond = new Diamond();
diamond.makeDiamond('C')

