export default class Series {
  constructor(serieStr) {
    this.digits = serieStr.split('').map(digit => parseInt(digit))
  }

  slices(size) {
    const len = this.digits.length;
    if (size > len) throw new Error('Slice size is too big.');
    const slices = [];

    for (let start = 0; start <= len - size; start ++) {
      slices.push(this.digits.slice(start, start + size));
    }

    return slices;
  }
}
