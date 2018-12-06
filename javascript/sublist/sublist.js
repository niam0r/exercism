class List {
  constructor(list = []) {
    this.list = list;
  }

  compare(other) {
    if (this.list.length === 0 && other.list.length === 0) { return 'EQUAL'; }
    if (this.list.length === 0 && other.list.length > 0 ) { return 'SUBLIST'; }
    if (this.list.length > 0 && other.list.length === 0 ) { return 'SUPERLIST'; }
  }
}

export default List;

// const listOne = new List();
// const listTwo = new List();

// console.log(listOne.list)
// console.log(listTwo.list)
