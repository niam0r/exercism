const converter = require('number-to-words');

const days = {
  1: 'first',
  2: 'second',
  3: 'third',
  4: 'fourth',
  5: 'fifth',
  6: 'sixth',
  7: 'seventh',
  8: 'eighth',
  9: 'ninth',
  10: 'tenth',
  11: 'eleventh',
  12: 'twelfth'
};

const gifts = {
  1: 'a Partridge in a Pear Tree',
  2: 'Turtle Doves,',
  3: 'French Hens,',
  4: 'Calling Birds',
  5: 'Gold Rings',
  6: 'Geese-a-Laying',
  7: 'Swans-a-Swimming',
  8: 'Maids-a-Milking',
  9: 'Ladies Dancing',
  10: 'Lords-a-Leaping',
  11: 'Pipers Piping',
  12: 'Drummers Drumming'
};

export class TwelveDays {
  verse(n) {
    return this.buildVerse(n);
  }

  buildList(n) {
    const list = [];
    for (let i = n; i >= 1 ; i -= 1) {
      if (i === 1 ) {
        list.push(`and ${gifts[i]}`);
        return list.join(' ');
      }
      let quantityAndGift = `${converter.toWords(i)} ${gifts[i]}`
      list.push(quantityAndGift);
    }
    return list.join(' ');
  }

  buildVerse(n) {
    let list = n === 1 ? gifts[n] : this.buildList(n);
    return `On the ${converter.toWordsOrdinal(n)} day of Christmas my true love gave to me: ${list}.\n`;
  }
}


// 'On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.\n\n' +
// 'On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
// 'On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
// 'On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
// 'On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
// 'On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
// 'On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
// 'On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
// 'On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
// 'On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
// 'On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n' +
// 'On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n';
