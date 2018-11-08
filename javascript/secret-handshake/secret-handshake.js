const code = {
  1: 'wink',
  10: 'double blink',
  100: 'close your eyes',
  1000: 'jump',
  10000: 'reverse'
};

// function secretHandshake(n) {

export function secretHandshake(n) {
  const output = [];
  output.push(code[n]);

  return output;
};



// console.log(code[1])
