class Anagram {
  constructor(subject) {
    this.subject = subject
  }

  matches(words) {
    const results = [];
    words.forEach(word => {
      let notSameWord = word.toUpperCase() !== this.subject.toUpperCase();
      let anagram = this.clean(word) == this.clean(this.subject);
      if (anagram && notSameWord) results.push(word);
    })

    return results;
  }

  clean(word) {
    return word.toLowerCase().split('').sort().join();
  }
}

if (module) module.exports = Anagram;
