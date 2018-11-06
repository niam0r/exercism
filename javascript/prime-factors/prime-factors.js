export function primeFactors(number) {
  const factors = [];
  let divisor = 2;

  while (number > 1) {
    while (number % divisor == 0) {
      factors.push(divisor);
      number /= divisor;
    }
    divisor += 1;
  }

  return factors;
}
