const allVerses = {
  1: ['This is the house that Jack built.'],
  2: ['This is the malt',
      'that lay in the house that Jack built.'],
  3: ['This is the rat',
      'that ate the malt',
      'that lay in the house that Jack built.']
};

class House {
  static verse(n) {
    return allVerses[n];
  };


}

if (module) { module.exports = House };
