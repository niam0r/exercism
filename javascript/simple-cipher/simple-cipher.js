const alphabet = 'abcdefghijklmnopqrstuvwxyz';
const len = alphabet.length;

const generateKey = () => {
  return Array.from({ length: 100 }, () => alphabet.charAt(Math.floor(Math.random() * len))).join('');
};

export class Cipher {
  constructor(key) {
    if (typeof key === 'undefined') { key = generateKey(); }
    else if (!key || !/^[a-z]+$/.test(key)) { throw new Error('Bad key'); }
    this.key = key;
  }

  encode(string) {

  }

  decode(string) {

  }
};


// const myCipher = new Cipher();
// console.log(myCipher.key);
