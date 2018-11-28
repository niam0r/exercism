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
    this.operation = this.clean(question);
  }

  clean(str) {
    return str.replace(/What is|by|\?/g, '').split(' ').map(el => {
     return find_operator(el) ? find_operator(el) : el;
    }).join(' ');
  }

  answer() {
    return eval(this.operation);
  }
}

