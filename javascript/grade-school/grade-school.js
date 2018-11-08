class School {
  constructor() {
    this.db = {};
  }

  roster() {
    return this.db;
  }

  add(name, grade) {
    this.db[grade] ? this.db[grade].push(name) : this.db[grade] = [name];
    this.db[grade].sort();
  }

  grade(grade) {
    return this.db[grade] ? this.db[grade].sort() : [];
  }
}

export default School;
