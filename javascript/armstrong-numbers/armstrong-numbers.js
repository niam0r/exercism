export function validate(number) {
  const digits = number.toString().split('').map(Number);
  const reducer = (acc, value) => acc + Math.pow(value, digits.length);
  return number === digits.reduce(reducer, 0);
}

