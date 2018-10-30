export default function solve(x, y) {
  if ( (typeof x !== 'number') || (typeof y !== 'number') ) {
    return null;
  }
  else if ( inBetween(x, -1, 1) && inBetween(y, -1, 1) ) {
    return 10;
  }
  else if ( inBetween(x, -5, 5) && inBetween(y, -5, 5) ) {
    return 5;
  }
  else if ( inBetween(x, -10, 10) && inBetween(y, -10, 10) ) {
    return 1;
  }
  else {
    return 0;
  }
};

function inBetween(value, min, max) {
   return (value >= min && value <= max);
};

