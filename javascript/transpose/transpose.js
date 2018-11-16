// function tranpose(input) {
export default function tranpose(input) {
  if (input === undefined || input.length == 0) return input;
  const nOfCol = input.length;
  const longest = Math.max(...input.map(line => line.length));
  const padded = input.map(line => line.padEnd(longest, ' '));
  const arrOfArr = padded.map(line => line.split(''))
  const transposed = arrOfArr[0].map((col, i) => arrOfArr.map(row => row[i]));
  const joined = transposed.map(arr => arr.join(''));

  return joined;
}

// tranpose(['A1'])
// tranpose(['A', '1'])
console.log(tranpose(['The fourth line.', 'The fifth line.']))

























// return input[0].map((col, i) => input.map(row => row[i]));
