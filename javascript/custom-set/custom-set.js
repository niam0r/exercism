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

  subset(otherSet) {
    if (this.empty()) return true;
    if (otherSet.empty()) return false;
    return this.values.every(value => otherSet.contains(value));
  }

  disjoint(otherSet) {
    if (this.empty() || otherSet.empty()) return true;
    return !this.values.some(value => otherSet.contains(value));
  }
}
