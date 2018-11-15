class Words {
  count(words) {
    const counts = {};
    let normalizedWords = words.toLowerCase().match(/\S+/g)
    normalizedWords.forEach(word => {
      counts[word] = Object.prototype.hasOwnProperty.call(counts, word) ? counts[word] + 1 : 1;
    })
    return counts;
  }
}

if (module) module.exports = Words;
