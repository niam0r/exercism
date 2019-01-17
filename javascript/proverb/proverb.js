const line = (first, second) => {
  return `For want of a ${first} the ${second} was lost.\n`;
};

const proverb = (...input) => {
  let proverb = '';
  proverb += line(input[0], input[1])
  proverb += `And all for the want of a ${input[0]}.`
  return proverb;
};



if (module) {module.exports = proverb}

console.log(proverb('nail', 'shoe'))
