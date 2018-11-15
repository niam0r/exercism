class PhoneNumber {
  constructor(input) {
    this.input = input
  }

  number() {
    let cleaned = this.input.replace(/\D/g, '').replace(/^1/, '');
    return cleaned.length == 10 && this.validateCodes(cleaned) ? cleaned : null;
  }

  validateCodes(str) {
    const regex = /0|1/;
    const area = !regex.test(str[0]);
    const local = !regex.test(str[3]);
    return area && local;
  }
}

if (module) module.exports = PhoneNumber;
