const isPalindrome = n => {
  return parseInt(n.toString().split('').reverse().join('')) === n;
}

const generate = (args) => {


  return {
    largest: {
      value: maxProduct,
      factors: data[maxProduct],
    },
    smallest: {
      value: minProduct,
      factors: data[minProduct],
    },
  };
};

if (module) { module.exports = generate };

console.log(isPalindrome(102));
