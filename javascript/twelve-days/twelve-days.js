const converter = require('number-to-words');

const gifts = {
  1: 'a Partridge in a Pear Tree',
  2: 'Turtle Doves,',
  3: 'French Hens,',
  4: 'Calling Birds,',
  5: 'Gold Rings,',
  6: 'Geese-a-Laying,',
  7: 'Swans-a-Swimming,',
  8: 'Maids-a-Milking,',
  9: 'Ladies Dancing,',
  10: 'Lords-a-Leaping,',
  11: 'Pipers Piping,',
  12: 'Drummers Drumming,'
};

export class TwelveDays {
  buildList(n) {
    const list = [];
    for (let i = n; i >= 1; i -= 1) {
      if (i === 1) {
        list.push(`and ${gifts[i]}`);
        return list.join(' ');
      }
      list.push(`${converter.toWords(i)} ${gifts[i]}`);
    }
    return list.join(' ');
  }

  buildVerse(n) {
    const list = n === 1 ? gifts[n] : this.buildList(n);
    return `On the ${converter.toWordsOrdinal(n)} day of Christmas my true love gave to me: ${list}.\n`;
  }

  verse(start, end) {
    if (end === undefined) return this.buildVerse(start);
    const verses = [];
    for (let n = start; n <= end; n += 1) {
      verses.push(this.buildVerse(n));
    }
    return verses.join('\n');
  }

  sing() { return this.verse(1, 12); }
}
