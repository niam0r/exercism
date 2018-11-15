function transform(oldObj) {
  const newObj = {};
  Object.keys(oldObj).forEach(oldKey => {
    oldObj[oldKey].forEach(letter => {
      newObj[letter.toLowerCase()] = parseInt(oldKey);
      })
  })

  return newObj;
}

if (module) module.exports = transform;
