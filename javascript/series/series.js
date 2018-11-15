export default class Series {
  constructor(serieStr) {
    this.digits = serieStr.split('').map(digit => parseInt(digit))
  }

  slices(size) {
    if (size > this.digits.length) throw new Error('Slice size is too big.');

    const slices = [];
    for (let start = 0; start <= this.digits.length - size; start ++) {
      slices.push(this.digits.slice(start, start + size));
    }
    return slices;
  }
}
