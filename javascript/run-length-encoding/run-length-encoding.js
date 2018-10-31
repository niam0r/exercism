const encode = (str) => {
  return str.replace(/(.)\1+/g, (chunk, char) => `${chunk.length}${char}`);
};

const decode = (str) => {
  return str.replace(/(\d+)(.)/g, (fullMatch, digit, char) => char.repeat(digit));
};

export { encode, decode };
