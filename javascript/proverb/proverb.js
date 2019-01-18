const line = (first, second) => {
  return typeof second === 'undefined' ? '' : `For want of a ${first} the ${second} was lost.\n`;
};

const proverb = (...input) => {
  const proverbArray = [];

  input.forEach((value, index) => {
    proverbArray.push(line(value, input[index + 1]));
  });

  const last = input[input.length - 1];
  let qualifier = '';

  if (last.qualifier) {
    qualifier = `${last.qualifier} `;
    proverbArray.length -= 2;
  }

  proverbArray.push(`And all for the want of a ${qualifier}${input[0]}.`);

  return proverbArray.join('');
};

if (module) { module.exports = proverb; }
