const find_operator = (str) => {
  switch (str) {
    case 'plus':
      return '+' ;
    case 'minus':
      return '-' ;
    case 'multiplied':
      return '*' ;
    case 'divided':
      return '/' ;
  }
};

export class WordProblem {
  constructor(question) {
    this.question = question.replace('What is ', '').replace('?', '');
    const operation = question.match(/(\d+)(\D+)(\d+)/)
    this.opd1 = operation[1]
    this.operator = operation[2].replace(/\s/g, '');
    this.opd2 = operation[3]
  }

  answer() {
    // console.log(`${this.opd1} ${find_operator(this.operator)} ${this.opd2}`);
    return eval(`${this.opd1} ${find_operator(this.operator)} ${this.opd2}`);
  }
}

// 'What is 1 plus 1?'.replace('What is ', '').replace('?', '')
// '1 plus 1'.match(/(\d)(\D+)(\d)/)[2].replace(/\s/g, '')

// new WordProblem('What is 1 plus 1?').answer();
