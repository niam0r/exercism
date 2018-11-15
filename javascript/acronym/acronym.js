export function parse (str) {
  return str.split(' ').map(word => word[0]).join('').toUpperCase();
}
