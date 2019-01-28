const isPalindrome = n => {
  return parseInt(n.toString().split('').reverse().join('')) === n;
};

const range = (start, end) => {
  if (start === end) return [start];
  return [start, ...range(start + 1, end)];
};

const generate = (args) => {
  const minFactor = args.minFactor;
  const maxFactor = args.maxFactor || 1;
  const factors = range(minFactor, maxFactor);


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

// console.log(isPalindrome(102));
console.log(range(1, 5));

