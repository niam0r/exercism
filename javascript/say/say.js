const converter = require('number-to-words');

export class Say {
  inEnglish(int) {
    return converter.toWords(int);
  }
}
