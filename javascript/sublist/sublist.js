const lengthDiff = (a, b) => String(Math.sign(a.list.length - b.list.length));

// is a sublist of b ? (returns the match or null)
const isSublist = (a, b) => b.list.join().match(a.list.join());

class List {
  constructor(list = []) {
    this.list = list;
  }

  compare(other) {
    switch (lengthDiff(this, other)) {
      case '-1':
        return isSublist(this, other) ? 'SUBLIST' : 'UNEQUAL';
      case '0':
        return isSublist(this, other) ? 'EQUAL' : 'UNEQUAL';
      case '1':
        return isSublist(other, this) ? 'SUPERLIST' : 'UNEQUAL';
    }
  }
}

export default List;
