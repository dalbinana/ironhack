
// var numbers= [2,5,10,-5,4,3,-10,0];

// function calcSumZero (listNumbers){
// 	var result=[];
// 	for(var i=0; i < listNumbers.length -1; i++){ //ab el -1 fem que no compari lultim numero, pq estaria sol
// 		var outerLoopNumber = listNumbers[i];
// 		for(var j=i+1; j < listNumbers.length; j++){ //el +1 es per no comparar-se amb si mateix
// 			var innerLoopNumber = listNumbers[j];
// 			if (outerLoopNumber + innerLoopNumber ===0) {
// 				var indexesPair = [i,j];
// 				result.push(indexesPair);
// 			 // if (outerLoopNumber + innerLoopNumber === 0) result.push([i, j]);  TAMBÉ ES PODRIA FER AIXÍ EN UNA LINIA	
// 			}
// 		}
// 	}
// 	return result
// }
//comento èr seguir
// var pairs = calcSumZero(numbers);
// console.log(pairs);


//////////////////////////////////////////////////////////////////////

///////var fruits =['banana','apple','strawberry']; //////////comentada per desactivar l'exercisi

// fruits.forEach(function (fruit) {   ///es una funció anonima. A js no es corren blocks sino funcions
// 	console.log(fruit);
// })

//////////////////////////////////////////////////////////////////////
////exercise Write a function that receives a string of numbers separated by colons. Have the function turn that string into an array of numbers and calculate their average.

/*
function calculateAverage (string_of_numbers){
	var array_of_numbers = string_of_numbers.split(":");
	var sub_result = 0
	for(var i=0; i < array_of_numbers.length; i++){
		sub_result=sub_result+Number(array_of_numbers[i]);
	
}
console.log(array_of_numbers);
console.log(sub_result);
console.log(array_of_numbers.length);
return sub_result/array_of_numbers.length;

}



 
var numbers = '80:70:90:100';
console.log(calculateAverage(numbers));
*/
//////ara la manera pro de fet el mateix

// function calcAvg(numbersInStr) {
//   var numbersStr = numbersInStr.split(':');
//   function calcSum(acc, number) {
//     return acc + Math.floor(number);
//   }
//   var sum = numbersStr.reduce(calcSum, 0);
//   var avg = sum / numbersStr.length;
//   return avg;
// }
// ​
// var avg = calcAvg(strOfNums);
// console.log(avg);

// var numbers = '80:70:90:100';














