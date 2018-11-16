export class HighScores {
  constructor(scores) {
    this.scores = scores
    this.latest = scores[scores.length-1]
    this.highest = Math.max(...scores)
    this.top = [...scores].sort((a, b) => b - a).slice(0, 3)
    this.report = this.makeReport(this.latest, this.highest)
  }

  makeReport(latest, highest) {
    const msg = `Your latest score was ${latest}. That's`;
    return latest == highest ?
      `${msg} your personal best!` :
      `${msg} ${highest - latest} short of your personal best!`;
  }
}
