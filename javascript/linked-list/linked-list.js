class LinkedList {
  constructor() {
    this.list = [];
  }

  push(e) {
    return this.list.push(e);
  }

  pop(e) {
    return this.list.pop(e);
  }

  shift() {
    return this.list.shift();
  }

  unshift(e) {
    return this.list.unshift(e);
  }

  count() {
    return this.list.length;
  }

  delete(e) {
    let i = this.list.findIndex(el => el == e);
    if (i == -1) { return this.list; }
    return this.list.splice(i, 1);
  }
}

export default LinkedList;
