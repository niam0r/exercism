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
    this.aList = [];
  }

  extractAllergens() {
    for (let key in allergens) {
      if (key <= this.score) {
        this.aList.push(allergens[key]);
        this.score -= key;
      }
    }
  }

  list() {
    if (this.score === 0) { return this.aList; }
    if (allergens.hasOwnProperty(this.score)) { return [allergens[this.score]]; }
    this.extractAllergens();

    return this.aList;
  }
}

export default Allergies;
