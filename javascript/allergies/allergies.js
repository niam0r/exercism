const allergens = {
  128: 'cats',
  64: 'pollen',
  32: 'chocolate',
  16: 'tomatoes',
  8: 'strawberries',
  4: 'shellfish',
  2: 'peanuts',
  1: 'eggs'
};

class Allergies {
  constructor(score) {
    this.score = score;
    this.aList = this.buildList();
  }

  extractAllergens(aList) {
    for (let key in allergens) {
      if (key <= this.score) {
        aList.push(allergens[key]);
        this.score -= key;
      }
    }
  }

  buildList() {
    let aList = [];
    if (this.score === 0) { return aList; }
    if (allergens.hasOwnProperty(this.score)) {
      aList.push(allergens[this.score]);
    } else {
      this.extractAllergens(aList);
    }
    return aList;
  }

  list() {
    return this.aList;
  }

  allergicTo(allergen) {
    return this.aList.includes(allergen);
  }
}

export default Allergies;
