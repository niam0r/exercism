class Robot {
  constructor() {
    this.usedNames = new Set()
    this.robotName = this.generateName()
  }

  get name() {
    return this.robotName;
  }

  generateName() {
    const alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const numbers = '0123456789';
    let name = this.sampler(alphabet, 2) + this.sampler(numbers, 3);
    if (this.usedNames.has(name)) return this.generateName();
    this.usedNames.add(name);
    return name;
  }

  sampler(possible, n) {
    let output = '';
    for (let i = 0; i < n; i++)
      output += possible.charAt(Math.floor(Math.random() * possible.length));
    return output;
  }

  reset() {
    this.robotName = this.generateName();
  }
}

if (module) module.exports = Robot;

// myRobot = new Robot;
// myRobot.reset();
// console.log(myRobot.usedNames);

