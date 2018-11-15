export function parse (str) {
  // return str.split(/\s|-/).map(word => word[0]).join('').toUpperCase();
  return str.match(/[A-Z]+[a-z]*|[a-z]+/g).reduce((acc, word) => `${acc}${word[0]}`, '').toUpperCase();
}
