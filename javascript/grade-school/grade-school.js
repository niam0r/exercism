class School {
  constructor() {
    this.db = {}
  }

  roster() {
    return this.db;
  }

  add(name, grade) {
    this.db[grade] = (this.db[grade] || []).concat(name).sort();
  }

  grade(grade) {
    return !this.db[grade] ? [] : [ ...this.db[grade] ];
  }
}

if (module) module.exports = School;

// bapti's solution
// https://exercism.io/tracks/javascript/exercises/grade-school/solutions/d29b01c11ab34235a6dd292d6d6603cc

// class School {
//   constructor() {
//     this.db = {}
//   }

//   roster() {
//     return Object
//       .keys(this.db)
//       .reduce((acc, prop) => {
//         acc[prop] = [ ...this.db[prop] ]
//         return acc
//       }, {})
//   }

//   add(name, grade) {
//     !this.db[grade]
//       ? this.db[grade] = [name]
//       : this.db[grade] = [...this.db[grade], name].sort()
//   }

//   grade(grade) {
//     return !this.db[grade]
//       ? []
//       : [ ...this.db[grade] ]
//   }
// }

// export default School
