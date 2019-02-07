export class CustomSet {
  constructor(values) {
    this.values = values || [];
  }

  empty() {
    return this.values.length === 0;
  }

  contains(el) {
    return this.values.includes(el);
  }
}
