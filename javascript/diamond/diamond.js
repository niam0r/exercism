const alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];

// .A.
// B.B
// .A.

// ··A··
// ·B·B·
// C···C
// ·B·B·
// ··A··

// export class Diamond {
class Diamond {
  makeDiamond(letter) {
    const position = alphabet.indexOf(letter);
    const size = (position * 2) + 1;
    const grid = Array(size).fill().map(() => Array(size).fill());
    console.log(grid);

    return 'A\n';
  }
}

const diamond = new Diamond();
diamond.makeDiamond('C')

