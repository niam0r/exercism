const pad = times => ' '.repeat(times);

const printLetter = (index) => {
  const character = 65 + index;
  if (index === 0) {
    return 'A';
  }
  return String.fromCharCode(character) + pad((index - 1) * 2 + 1) + String.fromCharCode(character);
};

const buildLine = (letterIndex, i) => {
  const diff = letterIndex - i;
  return `${pad(diff) + printLetter(i) + pad(diff)}\n`;
};

export class Diamond {
  makeDiamond(letter) {
    const letterIndex = letter.charCodeAt() - 65;
    let output = '';

    for (let i = 0; i <= letterIndex; i += 1) {
      output += buildLine(letterIndex, i);
    }
    for (let i = letterIndex - 1; i >= 0; i -= 1) {
      output += buildLine(letterIndex, i);
    }
    return output;
  }
}
