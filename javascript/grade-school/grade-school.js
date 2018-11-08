class School {
  constructor() {
    this.db = {};
  }

  roster() {
    return this.db;
  }

  add(name, grade) {
    this.db[grade] = (this.db[grade] || []).concat(name).sort();
  }

  grade(grade) {
    return this.db[grade] || [];
  }
}

if (module) module.exports = School;
