const translateWord = word => {
  return `${word}ay`;

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
