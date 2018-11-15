class Words {
  count(words) {
    const counts = {};
    let normalizedWords = words.trim().toLowerCase().split(/\s+/)
    normalizedWords.forEach(word => {
      counts[word] = Object.prototype.hasOwnProperty.call(counts, word) ? counts[word] + 1 : 1;
    })
    return counts;
  }
}

if (module) module.exports = Words;
