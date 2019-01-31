export class ISBN {
  constructor(inputStr) {
    this.isbn = inputStr.replace(/-/g, '');
  }

  isValid() {
    if (!this.isbn.match(/^(\d{9}[\dxX])$/)) return false;

    const isbnArray = [...this.isbn];
    if (isbnArray[9].match(/[xX]/)) isbnArray[9] = 10;

    const sum = isbnArray.reduce((acc, val, i) => acc + ((10 - i) * parseInt(val, 10)), 0);

    return sum % 11 === 0;
  }
}
