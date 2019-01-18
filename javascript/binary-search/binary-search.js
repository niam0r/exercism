const isSorted = ary => {
  return ary.every((number, index) => {
    if (index === (ary.length - 1)) return true;
    return number <= ary[index + 1];
  })
}

class BinarySearch {
  constructor(ary) {
    if (isSorted(ary)) { this.array = ary ;}
  }
}

if (module) { module.exports = BinarySearch };

// const sortedArray = [1, 2, 3, 4, 5, 6];

// console.log(isSorted(sortedArray));

// const unsortedArray = [10, 2, 5, 1];
