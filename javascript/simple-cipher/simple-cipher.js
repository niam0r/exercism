const alphabet = 'abcdefghijklmnopqrstuvwxyz';

class Cipher {
  constructor(key = this.generateKey(100)) {
    this.key = this.validate(key);
  }

  generateKey(length) {
    let key = ''
    for (var i = 0; i < length; i++)
      key += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    return key;
  }

  validate(key) {
    if (!key || (/[A-Z0-9\W]/).test(key)) { throw new Error('Bad key'); }
    return key;
  }


  encode(string) {

  }

  decode(string) {

  }
};

if (module) module.exports = Cipher;

const myCipher = new Cipher();
console.log(myCipher.key);
