class PhoneNumber {
  constructor(input) {
    this.input = input
  }

  number() {
    let cleaned = this.input.replace(/\D/g, '').replace(/^1/, '');
    return cleaned.length == 10 ? cleaned : null;
  }
}

if (module) module.exports = PhoneNumber;
