const directions = ['north', 'east', 'south', 'west'];

class Robot {
  constructor() {
    this.coordinates = [0, 0];
    this.bearing = 'north';
  }

  at(x, y) {
    this.coordinates = [x, y];
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
