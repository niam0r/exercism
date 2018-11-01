// const Cipher = class {
export const Cipher = class {
  constructor(key = this.generateKey(100)) {
    this.key = key;
  }

  generateKey(length) {
    let key = ''
    const charSet = "abcdefghijklmnopqrstuvwxyz"
    for (var i = 0; i < length; i++)
      key += charSet.charAt(Math.floor(Math.random() * charSet.length));
    return key;
  }
};

// const myCipher = new Cipher();
// console.log(myCipher.key);
