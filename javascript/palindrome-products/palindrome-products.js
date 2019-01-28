const isPalindrome = n => parseInt(n.toString().split('').reverse().join('')) === n;

const areSameArray = (arr1, arr2) => arr1.toString() === arr2.toString();

const generate = (params) => {
  const minFactor = params.minFactor || 1;
  const maxFactor = params.maxFactor;

  const palindromes = {};

  for (let i = minFactor; i <= maxFactor; i++) {
    for (let j = i; j <= maxFactor; j++) {
      let factors = [i, j].sort();
      let product = i * j;
      if (isPalindrome(product) && palindromes[product]) {
        if (!palindromes[product].some(areSameArray)) {
          palindromes[product].push(factors);
        }
      } else if (isPalindrome(product) && palindromes[product] === undefined) {
        palindromes[product] = [factors];
      }
    }
  }

  console.log(palindromes)


  // return {
  //   largest: {
  //     value: maxProduct,
  //     factors: data[maxProduct],
  //   },
  //   smallest: {
  //     value: minProduct,
  //     factors: data[minProduct],
  //   },
  // };
};

if (module) { module.exports = generate };

// console.log(isPalindrome(102));
// console.log(range(1, 5));

generate({ maxFactor: 9 });

