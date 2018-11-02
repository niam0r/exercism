export function isIsogram(phrase) {
  const cleaned = phrase.replace(/[- ]/g, '');
  return [... new Set(cleaned.toLowerCase())].length == cleaned.length;
}
