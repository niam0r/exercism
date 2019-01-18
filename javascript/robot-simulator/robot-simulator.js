export class InvalidInputError extends Error {
  constructor(message) {
    super();
    this.message = message || 'Invalid Input';
  }
}

const directions = ['north', 'east', 'south', 'west'];

export default class Robot {
  constructor() {

  }

  static instructions(str) {
    return [...str].map(letter => {
      switch (letter) {
        case 'A':
          return 'advance';
        case 'R':
          return 'turnRight';
        case 'L':
          return 'turnLeft';
        default:
          throw new InvalidInputError(`${character} is not a valid instruction character.`);
      }
    })
  }

  at(x, y) {
    this.coordinates = [x, y];
  }

  orient(direction) {
    if (!directions.includes(direction)) {
      throw new InvalidInputError('Invalid Robot Bearing');
    }
    this.bearing = direction;
  }

  place(placement) {
    this.at(placement.x, placement.y);
    this.orient(placement.direction);
    console.log(this.bearing)
  }

  evaluate(input) {
    Robot.instructions(input).forEach(command => this[command]);
  }

  // test('instruct robot', () => {
  //   robot.place({ x: -2, y: 1, direction: 'east' });
  //   robot.evaluate('RLAALAL');
  //   expect(robot.coordinates).toEqual([0, 2]);
  //   expect(robot.bearing).toEqual('west');
  // });

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
