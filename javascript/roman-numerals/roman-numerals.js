export default function toRoman(number) {
  let roman = '';
  let thousands, hundreds, tens;

  if (number >= 1000) {
    thousands = (number - number % 1000) / 1000
    roman = 'M'.repeat(thousands);
    number -= 1000 * thousands;
  };

  if (number >= 900) {
    roman += 'CM';
    number -= 900;
  }

  if (number >= 500) {
    roman += 'D';
    number -= 500;
  };

  if (number >= 400) {
    roman += 'CD';
    number -= 400;
  };

  if (number >= 100) {
    hundreds = (number - number % 100) / 100
    roman += 'C'.repeat(hundreds);
    number -= 100 * hundreds;
  };

  if (number >= 90) {
    roman += 'XC';
    number -= 90;
  };

  if (number >= 50) {
    roman += 'L';
    number -= 50;
  };

  if (number >= 40) {
    roman += 'XL';
    number -= 40;
  };

  if (number >= 10) {
    tens = (number - number % 10) / 10
    roman += 'X'.repeat(tens);
    number -= 10 * tens;
  };

  if (number >= 9) {
    roman += 'IX';
    number -= 9;
  };

  if (number >= 5) {
    roman += 'V';
    number -= 5;
  };

  if (number == 4) {
    roman += 'IV';
    number -= 4;
  };

  if (number >= 1) {
    roman += 'I'.repeat(number / 1);
    return roman;
  };

  return roman;
};
