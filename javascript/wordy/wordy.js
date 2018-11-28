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
    const cleaned = question.replace(/What is|by|\?/g, '')
    this.operation = cleaned.split(' ').map(el => {
     return find_operator(el) ? find_operator(el) : el;
    }).join(' ')
    // console.log(this.operation)
  }


  answer() {
    // console.log(eval(this.operation));
    return eval(this.operation);
  }
}

// 'What is 1 plus 1?'.replace('What is ', '').replace('?', '').replace(/\s/g, '')
// '1 plus 1'.match(/(\d)(\D+)(\d)/)[2].replace(/\s/g, '')

// new WordProblem('What is 1 plus 1?').answer();
// new WordProblem('What is -3 multiplied by 25?').answer();
// new WordProblem('What is -12 divided by 2 divided by -3?').answer();
