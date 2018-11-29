// const animals = ['fly', 'spider', 'bird', 'cat', 'dog', 'goat', 'cow', 'horse'];
const animals = ['fly', 'spider'];

const firstLine = animal => `I know an old lady who swallowed a ${animal}.\n`;
const lastLine = `I don't know why she swallowed the fly. Perhaps she'll die.\n`;

const buildStanza = (animal) => {
  let stanza = [];
  stanza.push(firstLine(animal))
  stanza.push(lastLine);
  return stanza.join('');
};


class Song {
  constructor() {
    this.song = this.buildSong();
  }

  verse(n) {
    return this.song[n - 1];
  }

  verses(start, end) {

  }

  buildSong() {
    const song = [];
    for (let animal of animals) {
      song.push(buildStanza(animal));
    }
    return song;
  }
}


export default Song;
// const song = new Song();
// console.log(song.song);
// console.log(song.verse(1));
