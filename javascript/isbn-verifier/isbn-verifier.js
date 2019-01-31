// export class ISBN {
class ISBN {
  constructor(inputStr) {
    this.isbn = inputStr.replace(/-/g, '').split('');
  }

  valid() {
    if (!this.isbn.every(char => /\d|X/.test(char))) return false;
  }
}

const isbn = new ISBN('3-598-21508-8');
console.log(isbn.isbn)
