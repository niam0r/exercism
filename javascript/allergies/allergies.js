const allergens = {
  1: 'eggs',
  2: 'peanuts',
  4: 'shellfish',
  8: 'strawberries',
  16: 'tomatoes',
  32: 'chocolate',
  64: 'pollen',
  128: 'cats'
};

class Allergies {
  constructor(score) {
    this.score = score;
  }

  list() {
    const allergies = [];
    if (this.score === 0) { return allergies; }
    if (allergens.hasOwnProperty(this.score)) { allergies.push(allergens[this.score]); }

    return allergies;
  }
}

export default Allergies;
