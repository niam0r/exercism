export class ISBN {
// class ISBN {
  constructor(inputStr) {
    this.isbn = inputStr.replace(/-/g, '').split('');
  }

  isValid() {
    if (!this.isbn.every(char => /\d|X/.test(char))) return false;

    let sum = 0;
    this.isbn.forEach((char, i) => {
       sum += char === 'X' ? 10 : parseInt(char, 10) * (10 - i);
    })

    return sum % 11 === 0;
  }
}

// const isbn = new ISBN('3-598-21508-8');
// console.log(isbn.isbn)
