var decode = require('./my_decode.js');

function superDecode(sentence, option) {
  var words = sentence.split(' ');
  console.log("superdecode");

  var secretMessage = decode(words);
  return secretMessage;
}

module.exports = superDecode;