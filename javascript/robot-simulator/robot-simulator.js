const directions = ['north', 'east', 'south', 'west'];

class Robot {
  constructor() {
    this.x = 0;
    this.y = 0;
    this.bearing = 'north'
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
