
const convertion = {
  ' _ \n| |\n|_|\n   ': '0',
  '   \n  |\n  |\n   ': '1',
  ' _ \n _|\n|_ \n   ': '2'
}


export const convert = inputStr => {
  return convertion[inputStr];
}


