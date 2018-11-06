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
}

export default LinkedList;
