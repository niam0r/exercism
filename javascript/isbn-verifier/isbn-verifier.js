export class ISBN {
  constructor(inputStr) {
    this.isbn = inputStr.replace(/-/g, '').split('');
  }

  isValid() {
    const { isbn } = this;
    if (!isbn.every(char => /\d|X/.test(char)) || isbn.length > 10) return false;

    let sum = 0;
    isbn.forEach((char, i) => {
      sum += char === 'X' ? 10 : parseInt(char, 10) * (10 - i);
    });

    return sum % 11 === 0;
  }
}
