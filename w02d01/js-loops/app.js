// var trainers = ["Ollie", "steve", "nial"];

//for looping through an array
for(var i = 0; i < trainers.length; i++){
	console.log(trainers[i])
}

//While loop
var j = 0;
while(j < 10){
	console.log("This loop has run " + (j + 1)  + " times");
	j++;
}

//FOR IN loop

var myObject = {
	a:1,
	b:2,
	c:3,
}
for (var key in myObject){
	console.log(key)
	console.log(myObject[key])
}