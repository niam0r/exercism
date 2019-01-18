const plants = {
  'C': 'clover',
  'G': 'grass',
  'R': 'radishes',
  'V': 'violets'
};

const defaultStudents = [
  'Alice',
  'Bob',
  'Charlie',
  'David',
  'Eve',
  'Fred',
  'Ginny',
  'Harriet',
  'Ileana',
  'Joseph',
  'Kincaid',
  'Larry',
];



const parse = diagram => {

};

class Garden {
  constructor(input, students) {
    this.students = students || defaultStudents;
    this.students.sort();

    this.students.forEach((student, index) => {
      this[student.toLowerCase()] = getPlants(parse(diagram), index);
    });
  }
}

if (module) { module.exports = Garden; }
