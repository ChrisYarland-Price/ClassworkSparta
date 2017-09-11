var Menu = prompt("action: 1 power sqaure root, 2 BMI, 3 Mortgage, 4 Calculator");

switch (Menu){
	case "1":
		var value1 = parseInt(prompt('enter first value')); 
    	var value2 = parseInt(prompt('enter second value'));
    	var choice = prompt('Choose Power (p) or Sqaure root(s)');
    	var result;
    	if (choice==="p"){
    		result=Math.pow(value1, value2)
    		alert("Your result is "+result)
    	} else{
    		result=Math.sqrt(value1, value2)
    		alert("Your result is "+result)
    	}
		break;
	case "2":
		var height = parseInt(prompt(' Enter the value of height in centimetres'));
		var weight = parseInt(prompt('Enter the value of your weight in kilogram'));
		var results;
		results = weight/(Math.pow(height,2))*10000;
		alert("your BMI is " + results)
	case "4":
		var run = prompt("Do you wish to use the calculator: y or n")
		while(run === "y"){
		    //get the user inputs
	    var value1 = parseInt(prompt('enter first value')); 
	    var value2 = parseInt(prompt('enter second value'));
	    var choice = prompt('Choose your action (a)dd (s)ubtract (m)ultiply (d)ivide') || "a";
	    var result;

	    switch(choice){
	    	case "a":
	    		result = value1 + value2;
	    		break;
	    	case "s":
	    		result = value1 - value2;
	    		break;
	    	case "m":
	    		result = value1 * value2;
	    		break;
	    	case "d":
	    		result = value1 / value2;
	    		break;
	    	default:
	    		console.log("This is not a real selection")
	    		break;
	    }
	    console.log(result)
	    run = prompt("Do you wish to use the calculator: y or n")
	}
}
