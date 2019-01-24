export class Luhn {
  constructor(inputString) {
    this.inputString = inputString.replace(/\s/g, '');
    this.valid = this.checkValidity();
  }

  checkValidity() {
    if (this.inputString.length === 1) { return false; }

    // const array = this.inputString.reverse().split();

  }
}

// if (module) { module.exports = Luhn; }

// const luhn = new Luhn('1');
// console.log(luhn.valid)
// const luhn0 = new Luhn('0');
// console.log(luhn0.valid)
