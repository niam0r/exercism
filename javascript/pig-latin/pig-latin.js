const VOWEL_SOUND_REGEXP = /^([aeiou]|xr|yt)/;
const CONSONANT_SOUND_REGEXP = /[^aeiou]/;

const translateWord = word => {
  if (VOWEL_SOUND_REGEXP.test(word)) { return `${word}ay`; }

  if (CONSONANT_SOUND_REGEXP.test(word)) {
    return `${word.substr(1)}${word[0]}ay`;
  }
};

export const translator = {
  translate(english) {
    return english
      .split(' ')
      .map(translateWord)
      .join(' ');
  },
};

// if (module) {module.exports = translator; }
