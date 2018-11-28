const alphabet = 'abcdefghijklmnopqrstuvwxyz';

class Cipher {
  constructor(key) {
    if (typeof key === 'undefined') { key = this.generateKey(); }
    else if (!key || !/^[a-z]+$/.test(key)) { throw new Error('Bad key'); }
    this.key = key;
  }

  generateKey(length) {
    let key = ''
    for (var i = 0; i < length; i++)
      key += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
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
