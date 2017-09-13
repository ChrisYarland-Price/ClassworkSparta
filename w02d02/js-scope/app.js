// var people = ["Ollie", "charlotte", "liam"];

// function prison(){
// 	var harvey = "CRIMINAL";

// 	function solitaryConfin() {
// 		// body...
// 		var matt = "Badly behaved CRIMINAL";
// 	}
// 	solitaryConfin();
// }

// prison();


function joinStringsAndPrint( string1 , string2 ) {

    var newString =  string1 + string2;
    
    function printString( string ) {
    
        console.log(string);
        
        // Q3
        // console.log(newString);
        
        // Q4
        // console.log(string1 + string2);
    
    }
    
    printString( newString );
    
    return newString;
    

}
var string1 = "hello, ";
var string2 = "world";
joinStringsAndPrint( string1 , string2 );

// Q1 
// printString( "run from outside joinStrings" );

// Q2
// console.log(newString)