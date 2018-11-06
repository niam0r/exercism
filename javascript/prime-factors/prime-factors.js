export function primeFactors(number) {
  const results = [];
  let divisor = 2;

  while (number > 1) {
    while (number % divisor == 0) {
      results.push(divisor);
      number = number / divisor;
    }
    divisor += 1;
  }

  return results;
}
