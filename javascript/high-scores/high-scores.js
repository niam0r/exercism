export class HighScores {
  constructor(scores) {
    this.scores = scores
    this.latest = scores[this.scores.length-1]
    this.highest = Math.max(...this.scores)
    this.top = [...this.scores].sort(this.sortNumber).reverse().slice(0, 3)
    this.report = this.makeReport(this.latest, this.highest)
  }

  sortNumber(a, b) {
    return a -b;
  }

  makeReport(latest, highest) {
    if (latest == this.highest)
      return `Your latest score was ${latest}. That's your personal best!`
    else
     return `Your latest score was ${latest}. That's ${highest - latest} short of your personal best!`
  }
}
