const code = {
  1: 'wink',
  10: 'double blink',
  100: 'close your eyes',
  1000: 'jump'
};

// function secretHandshake(n) {

export function secretHandshake(n) {
  if (typeof n !== 'number' ) { throw new Error('Handshake must be a number') };
  const output = [];
  let bin = parseInt(decToBin(n));
  let reverse = false;

  if (bin >= 10000) {
    reverse = true;
    bin -= 10000;
  } else if (bin >= 1000) {
    output.push(code[1000]);
    bin -= 1000;
  } else if (bin >= 100) {
    output.push(code[100]);
    bin -= 100;
  } else if (bin >= 10) {
    output.push(code[10]);
    bin -= 10;
  } else if (bin >= 1) {
    output.push(code[1]);
    bin -= 1;
  }

  return reverse ? output.reverse() : output;
};

function decToBin(dec){
  return (dec >>> 0).toString(2);
}

// console.log(decToBin(2))

// console.log(code[1])
// console.log(typeof 1)

// Given the input 3, the function would return the array ["wink", "double blink"] because 3 is 11 in binary.

// Given the input 19, the function would return the array ["double blink", "wink"] because 19 is 10011 in binary. Notice that the addition of 16 (10000 in binary) has caused the array to be reversed.
