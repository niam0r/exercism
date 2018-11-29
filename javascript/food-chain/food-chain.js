// const animals = ['fly', 'spider', 'bird', 'cat', 'dog', 'goat', 'cow', 'horse'];
const animals = ['fly', 'spider'];

const firstLine = animal => `I know an old lady who swallowed a ${animal}.\n`;
const lastLine = `I don't know why she swallowed the fly. Perhaps she'll die.\n`;

const buildStanza = (animal) => {
  let stanza = [];
  stanza.push(firstLine(animal))
  stanza.push(lastLine);
  return stanza;
};


class Song {
  constructor() {
    this.song = this.buildSong();
  }

  verse(n) {

  }

  verses(start, end) {

  }

  buildSong() {
    const song = [];
    for (let animal of animals) {
      song.push(buildStanza(animal));
    }
    return song.join('\n');
  }
}


// export default Song;
const song = new Song();
console.log(song.song);
