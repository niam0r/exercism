class Words {
  count(words) {
    const counts = {};
    let normalizedWords = words.toLowerCase().replace( /\s+/g, " " ).split(' ')
    normalizedWords.forEach(word => {
      counts[word] == undefined ? counts[word] = 1 : counts[word] += 1;
    })

    return counts;
  }
}

if (module) module.exports = Words;
