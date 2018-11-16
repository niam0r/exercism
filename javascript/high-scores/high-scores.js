export class HighScores {
  constructor(scores) {
    this.scores = scores
    this.latest = scores[this.scores.length-1]
    this.highest = Math.max(...this.scores)
  }
}
