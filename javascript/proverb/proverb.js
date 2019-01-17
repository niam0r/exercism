const proverb = (...input) => {
  console.log(input);
  return `For want of a nail the shoe was lost.
          And all for the want of a nail.`;
}

if (module) {module.exports = proverb}

console.log(proverb('nail', 'shoe'))
