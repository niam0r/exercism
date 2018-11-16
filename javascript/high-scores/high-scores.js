export class HighScores {
  constructor(scores) {
    this.scores = scores
    this.latest = scores[this.scores.length-1]
    this.highest = Math.max(...this.scores)
    this.top = [...this.scores].sort(this.sortNumber).reverse().slice(0, 3)
  }

  sortNumber(a, b) {
    return a -b;
  }
}
