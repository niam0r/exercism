class School {
  constructor() {
    this.db = {};
  }

  roster() {

    return this.db;
  }

  add(name, grade) {
    this.db[grade] ? this.db[grade].push(name) : this.db[grade] = [name];
  }


}

export default School;
