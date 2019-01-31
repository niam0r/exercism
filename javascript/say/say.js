const converter = require('number-to-words');

export class Say {
  inEnglish(int) {
    if (int < 0 || int > 999999999999) throw new Error('Number must be between 0 and 999,999,999,999.');
    return converter.toWords(int);
  }
}
