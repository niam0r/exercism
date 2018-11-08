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
  const bin = decToBin(n);

  output.push(code[bin])
  // bin.split('').forEach(e => output.push(code[e]));

  return output;
};

function decToBin(dec){
  return (dec >>> 0).toString(2);
}

// console.log(decToBin(2))

// console.log(code[1])
