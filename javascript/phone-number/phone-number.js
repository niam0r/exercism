class PhoneNumber {
  constructor(input) {
    this.input = input
  }

  number() {
    let cleaned = this.input.replace(/[\+\s()-.]/g, '');

    return cleaned;
  }
}

if (module) module.exports = PhoneNumber;
