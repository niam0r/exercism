const extractLetters = (inputArray) => {
  const lettersArray = [].concat(...inputArray.map(el => el.split('')));
  const uniqueLetters = [...new Set(lettersArray)];
  return Object.assign(...uniqueLetters.map(key => ({ [key]: 0 })));
};

const solve = (inputStr) => {
  const solution = {};
  const inputArray = inputStr.split(/\s\+\s|\s==\s/);
  const lettersObj = extractLetters(inputArray);
  console.log(lettersObj);
  const total = inputArray.pop();
  // console.log('total:', total)
  const addends = inputArray;
  // console.log('addends:', addends)


  return solution;
};

if (module) { module.exports = solve; }

solve('I + BB == ILL');
