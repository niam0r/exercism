export class InvalidInputError extends Error {
  constructor(message) {
    super();
    this.message = message || 'Invalid Input';
  }
}

const directions = ['north', 'east', 'south', 'west'];

export default class Robot {
  constructor() {
    this.coordinates = [0, 0];
    this.bearing = 'north';
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
          throw new InvalidInputError(`${letter} is not a valid instruction letter.`);
      }
    });
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
    if (index === 4) { index = 0; }
    this.orient(directions[index]);
  }

  turnLeft() {
    let index = directions.findIndex(direction => direction === this.bearing) - 1;
    if (index === -1) { index = 3; }
    this.orient(directions[index]);
  }

  place(args) {
    this.coordinates = [args.x, args.y];
    this.bearing = args.direction;
  }

  evaluate(input) {
    Robot.instructions(input).forEach(command => this[command]());
  }
}
