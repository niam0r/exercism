const match = {
  '(' : ')',
  '[' : ']',
  '{' : '}'
}

export function bracketPush(input) {
  const results = [];
  const norm = input.replace(/({})*(\[\])*(\(\))*/g, '');
  const len = norm.length;
  if (norm === '') {
    return true;
  } else {
    for (let i = 0; i < len / 2; i++) {
      results.push(match[norm[i]] === norm[len - i - 1]);
    }
    return results.every(result => result === true);
  }
}

