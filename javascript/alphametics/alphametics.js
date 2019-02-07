const solve = (inputStr) => {
  let solution = {};
  let inputArray = inputStr.split(/\s\+\s|\s==\s/)
  let lettersObj = extractLetters(inputArray);
  console.log(lettersObj);
  let total = inputArray.pop();
  // console.log('total:', total)
  const addends = inputArray;
  // console.log('addends:', addends)




  return solution;
}


const extractLetters = (inputArray) => {
  const lettersArray = [].concat(...inputArray.map(el => el.split('')));
  const uniqueLetters = [... new Set(lettersArray)];
  return Object.assign(...uniqueLetters.map(key => ({ [key]: 0 })));
}


const puzzle = 'I + BB == ILL';
solve(puzzle)


if (module) { module.exports = solve; }
