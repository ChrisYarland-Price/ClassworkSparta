// var money = prompt("how much money do you have in your pockets?");
// var drinks = 0;
// var crisps = 1.2;
// var drinkPrice = 3.5;
// var crispCount = 0

// while(money >= 0) {
// 	//console.log(money);
// 	if (money >= 10 && drinks < 3) {
// 		//console.log("buy another drink");
// 		drinks++;
// 		money = money - drinkPrice;
// 	}else if (money >=5 || crisps == 0){
// 			//console.log("Buy Crisps");
// 			crispCount++
// 			money = money - crisps;
// 	} else {
// 			console.log("Go Home");
// 			console.log(money);
// 			console.log("You had: " + drinks + " drinks and " + crispCount + " packets of crisps")
// 			break;
// 	}	
// }
	
var name = "Tim"


if (name === "Bob") {
	console.log("Hi Bob")
} else if(name === "Tim") {
	console.log("Yo Tim")
} else if(name === "Steve") {
	console.log("Aight steve-o")
} else{
	console.log("Hello Faceless one")
}

switch(name){
	case "Bob":
		console.log("Hi Bob");
		break;
	case "Tim":
		console.log("Yo Tim")
		break;
	case "Steve":
		console.log("Aight steve-o");
		break;
	default:
		console.log("Hello Faceless one")

}


