const raindrops = {
  3: 'Pling',
  5: 'Plang',
  7: 'Plong'
};

export default class Raindrops {
  convert(n) {
    let output = '';
    Object.keys(raindrops).forEach(key => {
      if (n % key == 0) output += raindrops[key];
    })
    return output == '' ? n.toString() : output;
  }
}
