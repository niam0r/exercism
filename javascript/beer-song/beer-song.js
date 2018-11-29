function bottles(number) {
  switch (number) {
    case 0:
      return 'No more bottles';
    case 1:
      return '1 bottle';
    default:
      return `${number} bottles`;
  }
}

function action(verseN) {
  if (verseN === 0) {
    return 'Go to the store and buy some more, ';
  }

  return `Take ${verseN === 1 ? 'it' : 'one'} down and pass it around, `;
}

function nextBottle(verseN) {
  return `${bottles(verseN === 0 ? 99 : verseN - 1).toLowerCase()} of beer on the wall.\n`;
}

class BeerSong {
  static verse(number) {
    const line1 = `${bottles(number)} of beer on the wall, `;
    const line2 = `${bottles(number).toLowerCase()} of beer.\n`;
    const line3 = action(number);
    const line4 = nextBottle(number);

    return [line1, line2, line3, line4].join('');
  }

  static sing(first = 99, last = 0) {
    const verses = [];
    for (let i = first; i >= last; i -= 1) {
      verses.push(this.verse(i));
    }

    return verses.join('\n');
  }
}

export default BeerSong;
