const plants = {
  C: 'clover',
  G: 'grass',
  R: 'radishes',
  V: 'violets'
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
  'Larry'
];

const parse = diagram => diagram.split('\n').map(row => [...row].map(letter => plants[letter]));

const getPlants = (parsedDiagram, index) => {
  const studentPlants = [];
  const position = index * 2;

  studentPlants.push(parsedDiagram[0][position]);
  studentPlants.push(parsedDiagram[0][position + 1]);
  studentPlants.push(parsedDiagram[1][position]);
  studentPlants.push(parsedDiagram[1][position + 1]);

  return studentPlants;
};

class Garden {
  constructor(diagram, students) {
    this.students = students || defaultStudents;
    this.students.sort();

    this.students.forEach((student, index) => {
      this[student.toLowerCase()] = getPlants(parse(diagram), index);
    });
  }
}

if (module) { module.exports = Garden; }
