const alphabet = [...'abcdefghijklmnopqrstuvwxyz']

export function isPangram(sentence) {
  if (sentence == '' ) { return false; }
  const sentenceArray = sentence.toLowerCase().replace(/\s/g, '').split('')
  return alphabet.every(letter => sentenceArray.includes(letter));
}
