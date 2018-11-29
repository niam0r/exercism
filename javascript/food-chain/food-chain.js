const actions = {
  1 : 'I know an old lady who swallowed a fly.',
};

const reasons = {
  1 : 'I don\'t know why she swallowed the fly. Perhaps she\'ll die.\n',
};


class Song {
  constructor() {
    this.song = ''
  }

  verse(n) {
    return actions[n] + '\n' + reasons[n];
  }

  verses(start, end) {

  }
}

export default Song;
