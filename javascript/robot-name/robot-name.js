class Robot {
  constructor() {
    this.name = this.generateName();
  }

  generateName() {
    const alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const numbers = '0123456789';
    let name = this.sampler(alphabet, 2);
    name += this.sampler(numbers, 3);
    return name;
  }

  sampler(possible, n) {
    let output = '';
    for (var i = 0; i < n; i++)
      output += possible.charAt(Math.floor(Math.random() * possible.length));
    return output;
  }

  reset() {
    this.name = this.generateName();
  }
}

if (module) module.exports = Robot;

// myRobot = new Robot;
// console.log(myRobot.name);

