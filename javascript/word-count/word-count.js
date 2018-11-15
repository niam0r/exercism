class Words {
  count(words) {
    const counts = {};
    words.toLowerCase().split(' ').forEach(word => {
      counts[word] == undefined ? counts[word] = 1 : counts[word] += 1;
    })

    return counts;
  }
}

if (module) module.exports = Words;
