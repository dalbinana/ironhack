///////EXERCICI MISSATGE SECRET
function decode(words) {
  // var secretMessage = '';
  // words.forEach(function (currentWord, index) {
  //   var secretLetter = currentWord.charAt(index % 5);
  //   secretMessage += secretLetter;
  // });
  var secretMessage = words.reduce(function(acc, currentWord, index) {
    var secretLetter = currentWord.charAt(index % 5);
    return acc + secretLetter;
  }, '');

  return secretMessage;
}


module.exports = decode;