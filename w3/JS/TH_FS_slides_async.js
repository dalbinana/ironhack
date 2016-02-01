


var fs = require('fs');

function print (error,content) {
	var array=content.split("\n");
	for(var i=0; i < array.length; i++){
		console.log(array[i]);
		console.log("--------------------")
	}
	console.log(error);		
}

fs.readFile('slides.txt','utf8',print);