var decode = require('./decode.js');

function superDecode(sentence, option) {
  var words = sentence.split(' ');
  var secretMessage = decode(words);
  return secretMessage;
}

module.exports = superDecode;