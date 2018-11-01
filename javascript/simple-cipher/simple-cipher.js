// const Cipher = class {
export const Cipher = class {
  constructor(key = this.generateKey(100)) {
    this.key = this.validate(key);
  }

  generateKey(length) {
    let key = ''
    const charSet = "abcdefghijklmnopqrstuvwxyz"
    for (var i = 0; i < length; i++)
      key += charSet.charAt(Math.floor(Math.random() * charSet.length));
    return key;
  }

  validate(key) {
    if (!key || (/[A-Z0-9\W]/).test(key)) { throw new Error('Bad key'); }
    return key;
  }

  const alpha = 'abcdefghijklmnopqrstuvwxyz';

  encode(string) {

  }

  decode(string) {

  }
};

// const myCipher = new Cipher();
// console.log(myCipher.key);
