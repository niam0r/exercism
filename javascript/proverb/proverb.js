const line = (first, second) => {
  if (typeof second === 'undefined') {
    return '';
  }
  return `For want of a ${first} the ${second} was lost.\n`;
};

const proverb = (...input) => {
  let proverb = '';

  input.forEach((value, index) => {
    let second = input[index + 1];

    proverb += line(value, second);
  })

  proverb += `And all for the want of a ${input[0]}.`
  return proverb;
};

if (module) {module.exports = proverb}

console.log(proverb('nail', 'shoe'))
