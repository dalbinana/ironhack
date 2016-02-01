var read = require('read');
var countId=0;

var Question = function(id,question,answer){
	if (id===undefined){
		id=countId++;
	}
	this.id = id;
	this.question = question;
	this.answer = answer;
}

var Quizz = function(question){
	options = {
    prompt: this.question;
	}
	read(options, displayName)
	
	function displayName (err, name){
	    console.log("Your name is: " + name)
	}

}