const line = (first, second) => {
  if (typeof second === 'undefined') { return '' }
  return `For want of a ${first} the ${second} was lost.\n`;
};

const proverb = (...input) => {
  let last = input[input.length - 1]
  let qualifier = '';
  if (last.qualifier) {
    qualifier = last.qualifier + ' ';
  }

  let proverb = [];
  input.forEach((value, index) => {
    let second = input[index + 1];

    proverb.push(line(value, second));
  })

  if (qualifier) {
    proverb.pop();
    proverb.pop();
  }


  proverb.push(`And all for the want of a ${qualifier}${input[0]}.`)

  return proverb.join('');
};

if (module) {module.exports = proverb}

proverb('nail', 'shoe', 'horse', 'rider','message', 'battle', 'kingdom', { qualifier: 'horseshoe' })

// console.log(proverb('nail', 'shoe', 'horse', 'rider','message', 'battle', 'kingdom', { qualifier: 'horseshoe' }))
