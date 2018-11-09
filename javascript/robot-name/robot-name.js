const LETTERS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const NUMBERS = '0123456789';
const usedNames = {};

const generateName = () => {
  let name = sampler(LETTERS, 2) + sampler(NUMBERS, 3);
  if (usedNames[name]) name = generateName();
  else usedNames[name] = true;
  return name;
};

const sampler = (possible, n) => {
  let output = '';
  for (let i = 0; i < n; i++)
    output += possible.charAt(Math.floor(Math.random() * possible.length));
  return output;
}

class Robot {
  constructor() {
    this.robotName = generateName()
  }

  get name() {
    return this.robotName;
  }

  reset() {
    this.robotName = generateName();
  }
}

if (module) module.exports = Robot;
