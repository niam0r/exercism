export class Luhn {
  constructor(inputString) {
    this.inputString = inputString.replace(/\s/g, '');
    this.valid = this.checkValidity();
  }

  checkValidity() {
    if (this.inputString.length === 1) { return false; }

    let sum = 0;
    [...this.inputString].reverse().forEach((element, index) => {
      if (index % 2 === 0) {
        sum += (element % 9);
      } else {
        sum += element;
      }
    });

    return sum % 10 === 0;
  }
}

