const alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];

export class Diamond {
  makeDiamond(letter) {
    const position = alphabet.indexOf(letter);
    const columns = (position + 1) * 2;
    const rows = position * 2 + 1;
    const grid = [];


    return 'A\n';
  }
}
