class Anagram {
  constructor(subject) {
    this.subject = this.clean(subject)
  }

  matches(words) {
    const results = [];
    words.forEach(word => {
      if (this.clean(word) == this.subject) { results.push(word) };
    })

    return results;
  }

  clean(word) {
    return word.split('').sort().join();
  }
}

if (module) module.exports = Anagram;
