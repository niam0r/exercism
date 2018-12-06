class List {
  constructor(list = []) {
    this.list = list;
  }

  compare(other) {
    switch (lengthDiff(this, other)) {
      case '-1':
        return isSublist(this, other) ? 'SUBLIST': 'UNEQUAL';
      case '0':
        return isSublist(this, other) ? 'EQUAL': 'UNEQUAL';
      case '1':
        return isSublist(other, this) ? 'SUPERLIST': 'UNEQUAL';
    }
  }
}

const lengthDiff = (a, b) => {
  return String(Math.sign(a.list.length - b.list.length));
};

const isSublist = (a, b) => {
  // is a sublist of b ? (returns the match or null)
  return b.list.join().match(a.list.join());
}

export default List;
