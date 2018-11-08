const code = {
  1: 'wink',
  10: 'double blink',
  100: 'close your eyes',
  1000: 'jump'
};

export function secretHandshake(n) {
  if (typeof n !== 'number' ) { throw new Error('Handshake must be a number') };
  const output = [];
  let bin = decToBin(n);
  let reverse = false;

  if (bin >= 10000) {
    reverse = true;
    bin -= 10000;
  }
  if (bin >= 1000) {
    output.push(code[1000]);
    bin -= 1000;
  }
  if (bin >= 100) {
    output.push(code[100]);
    bin -= 100;
  }
  if (bin >= 10) {
    output.push(code[10]);
    bin -= 10;
  }
  if (bin >= 1) {
    output.push(code[1]);
    bin -= 1;
  }
  return reverse ? output : output.reverse();
};

function decToBin(dec){
  return parseInt((dec >>> 0).toString(2));
}

