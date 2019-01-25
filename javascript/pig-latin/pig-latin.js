const VOWEL_SOUND_REGEXP = /^([aeiou]|xr|yt)/;
const CONSONANT_SOUND_REGEXP = /^([^aeiou]+(?=y)|[^aeiou]?qu|[^aeiou]+)([a-z]+)/;

const translateWord = (word) => {
  if (VOWEL_SOUND_REGEXP.test(word)) { return `${word}ay`; }

  return word.replace(CONSONANT_SOUND_REGEXP, '$2$1ay');
};

export const translator = {
  translate(english) {
    return english
      .split(' ')
      .map(translateWord)
      .join(' ');
  },
};
