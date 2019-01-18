const directions = ['north', 'east', 'south', 'west'];

class Robot {
  constructor() {
    this.coordinates = [0, 0];
    this.bearing = 'north';
  }

  static instructions(str) {
    const commands = [];
    str.split('').forEach(letter => {
      switch (letter) {
        case 'A':
          commands.push('advance');
          break;
        case 'R':
          commands.push('turnRight');
          break;
        case 'L':
          commands.push('turnLeft');
          break;
      }
    })
    return commands;
  }

  at(x, y) {
    this.coordinates = [x, y];
  }

  advance() {
    switch (this.bearing) {
      case 'north':
        this.coordinates[1] += 1;
        break;
      case 'east':
        this.coordinates[0] += 1;
        break;
      case 'south':
        this.coordinates[1] -= 1;
        break;
      case 'west':
        this.coordinates[0] -= 1;
        break;
    }
  }

  orient(direction) {
    // if (!direction.includes(direction)) { throw new error } !!! INCOMPLETE
    this.bearing = direction;
  }

  turnRight() {
    let index = directions.findIndex(direction => direction === this.bearing) + 1;
    if (index === 4 ) { index = 0 ;}
    this.orient(directions[index]);
  }

  turnLeft() {
    let index = directions.findIndex(direction => direction === this.bearing) - 1;
    if (index === -1 ) { index = 3 ;}
    this.orient(directions[index]);
  }
}

if (module) { module.exports = Robot };
