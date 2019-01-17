const line = (first, second) => {
  if (typeof second === 'undefined') { return ''; }
  return `For want of a ${first} the ${second} was lost.\n`;
};

const proverb = (...input) => {
  const proverb = [];

  input.forEach((value, index) => {
    proverb.push(line(value, input[index + 1]));
  });

  const last = input[input.length - 1];
  let qualifier = '';

  if (last.qualifier) {
    qualifier = `${last.qualifier} `;
    proverb.pop();
    proverb.pop();
  }

  proverb.push(`And all for the want of a ${qualifier}${input[0]}.`);

  return proverb.join('');
};

if (module) { module.exports = proverb; }
