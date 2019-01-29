const CONVERTION = {
  ' _ | ||_|   ': '0',
  '     |  |   ': '1',
  ' _  _||_    ': '2',
  ' _  _| _|   ': '3',
  '   |_|  |   ': '4',
  ' _ |_  _|   ': '5',
  ' _ |_ |_|   ': '6',
  ' _   |  |   ': '7',
  ' _ |_||_|   ': '8',
  ' _ |_| _|   ': '9'
};

const transpose = array => array[0].map((col, i) => array.map(row => row[i]));

export const convert = inputStr => {
  const lines = inputStr.split('\n');
  const transposed = transpose(lines.map(line => line.split(''))).map(array => array.join(''));

  let result = '';

  for (var i = 0; i < transposed.length; i += 3) {
    let digit = '';
    lines.forEach(line => {
      digit += line.slice(i, i + 3)
    });
    result += CONVERTION[digit] || '?';
  }

  return result;
};
