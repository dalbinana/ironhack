function splitString(sentence){
	var real_result=""
	for (var index=0, length = sentence.length, value=0; index < length; index++) {
		var character_to_send = sentence[index];
		var result=cypher(character_to_send);
		

		real_result=real_result+result;
}
console.log(real_result);
}
function cypher (word, option) {
if (option === undefined) { option = 3; }
var shift = word.charCodeAt(0);
var turn = shift + option;
// var last = String.fromCharCode(turn);
if (word >= "A" && word <= "Z") {
if (turn > 90) { console.log (turn = 64 + option); }
else if (turn < 65) { turn = 91 + option;}
last = String.fromCharCode(turn);
return last;
}
else if (word >= "a" && word <= "z") {
if (turn > 122) { turn = 96 + option; }
else if (turn < 97) { turn = 123 + option;}
last = String.fromCharCode(turn);
return last;
}
else {
return word;
}
}
sentence = "Danny, que puta tan grande?"
splitString(sentence)