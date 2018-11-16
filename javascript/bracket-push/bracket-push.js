const match = {
  '(' : ')',
  '[' : ']',
  '{' : '}'
}

export function bracketPush(input) {
  let len = input.length;
  const results = [];
  for (let i = 0; i < len / 2; i++) {
    // console.log(match[input[i]])
    // console.log(input[len - i - 1])
    results.push(match[input[i]] === input[len - i - 1]);
  }
  return results.every(result => result === true);
}

// bracketPush('{}');
// console.log(bracketPush('{()}'));
// console.log(match['(']);
// console.log(match['{']);
// console.log(match['[']);
