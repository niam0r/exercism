const encode = (str) => {
  return str.replace(/(.)\1+/g, (chunk, char) => `${chunk.length}${char}`);
};

const decode = (str) => {

};

export { encode, decode };
