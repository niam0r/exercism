export default function tranpose(input) {
  if (input === undefined || input.length == 0) return input;
  const longest = Math.max(...input.map(line => line.length));
  const padded = input.map(line => line.padEnd(longest, ' '));
  const arrOfArr = padded.map(line => line.split(''));
  const transposed = arrOfArr[0].map((col, i) => arrOfArr.map(row => row[i]));
  const joined = transposed.map(arr => arr.join(''));
  joined.splice(joined.length - 1, 1, joined[joined.length -1].trimRight());
  return joined;
}


