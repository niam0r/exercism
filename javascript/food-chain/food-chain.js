const actions = {
  1 : 'I know an old lady who swallowed a fly.',
  2 : 'I know an old lady who swallowed a spider.\nIt wriggled and jiggled and tickled inside her.'
};

const reasons = {
  1 : 'I don\'t know why she swallowed the fly. Perhaps she\'ll die.\n',
  2 : `She swallowed the spider to catch the fly.\nI don't know why she swallowed the fly. Perhaps she'll die.\n`
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
