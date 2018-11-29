const animals = {
  'fly' : '',
  'spider' : `It wriggled and jiggled and tickled inside her.\n`,
  'bird' : `How absurd to swallow a bird!\n`,
  'cat' : `Imagine that, to swallow a cat!\n`,
  'dog' : `What a hog, to swallow a dog!\n`,
  'goat' : `Just opened her throat and swallowed a goat!\n`,
  'cow' : `I don't know how she swallowed a cow!\n`,
  'horse' : `She's dead, of course!\n`
 };

const animalsArray = Object.keys(animals);
const previousAnimal = animal => animalsArray[animalsArray.indexOf(animal) - 1];

const firstLine = animal => `I know an old lady who swallowed a ${animal}.\n`;
const longReasonWhy = `She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n`;
const firstReason = `She swallowed the spider to catch the fly.\n`
const reasonWhy = animal => `She swallowed the ${animal} to catch the ${previousAnimal(animal)}.\n`
const lastLine = `I don't know why she swallowed the fly. Perhaps she'll die.\n`;

const lastTwoLines = longReasonWhy + firstReason;

const buildStanza = (animal) => {
  let stanza = [firstLine(animal)];
  switch (animal) {
    case 'fly':
      break;
    case 'spider':
      stanza.push(animals['spider']);
      stanza.push(firstReason);
      break;
    case 'bird':
      stanza.push(animals['bird']);
      stanza.push(lastTwoLines);
      break;
    default:
      // statements_def
      break;
  }
  // if (animals[animal]) { stanza.push(animals[animal]) }
  // if (animal === 'bird') { stanza.push(longReasonWhy) }
  // if (animal !== 'fly') { stanza.push(reasonWhy(animal)) }
  // stanza.push(firstReason);

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
    for (let animal in animals) {
      song.push(buildStanza(animal));
    }
    return song;
  }
}


export default Song;
// const song = new Song();
// console.log(song.song);
// console.log(song.verse(1));
