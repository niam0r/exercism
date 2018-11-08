// export function secretHandshake(n) {
//   if (typeof n !== 'number' ) { throw new Error('Handshake must be a number') };
//   const output = [];
//   let bin = decToBin(n);
//   let reverse = false;

//   if (bin >= 10000) {
//     reverse = true;
//     bin -= 10000;
//   }
//   if (bin >= 1000) {
//     output.push('jump');
//     bin -= 1000;
//   }
//   if (bin >= 100) {
//     output.push('close your eyes');
//     bin -= 100;
//   }
//   if (bin >= 10) {
//     output.push('double blink');
//     bin -= 10;
//   }
//   if (bin >= 1) {
//     output.push('wink');
//     bin -= 1;
//   }
//   return reverse ? output : output.reverse();
// };

// function decToBin(dec){
//   return parseInt((dec >>> 0).toString(2));
// }

export function secretHandshake(n) {
  if (typeof n !== 'number' ) { throw new Error('Handshake must be a number') };
  let output = [];

  if (n & 0b1) output.push('wink');
  if (n & 0b10) output.push('double blink');
  if (n & 0b100) output.push('close your eyes');
  if (n & 0b1000) output.push('jump');
  if (n & 0b10000) output.reverse();

  return output;
};
