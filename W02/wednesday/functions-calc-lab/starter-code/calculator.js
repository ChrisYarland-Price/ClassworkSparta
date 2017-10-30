var tryagain = true;

// Bonus, keep looping until we say stop
while (tryagain) {

    Run()
    // should we continue. "" is falsey "q" is truthy
    tryagain = !prompt('Enter to continue, or (q)uit');

}


//Functions 
function val() {
    return parseFloat(prompt('enter value')); // parseFloat to turn the string to a decimal number
}

function Run() {
    var value1;
    var value2;
    let str;
    var choice = options();
    var answer = null;

    switch(choice){
        case 'a':
            value1 = val();
            value2 = val();
            answer = add(value1,value2);
        break;
        case 's':
            value1 = val();
            value2 = val();
            answer = sub(value1,value2);
        break;
        case 'm':
            value1 = val();
            value2 = val();
            answer = multi(value1,value2);
        break;
        case 'd':
            value1 = val();
            value2 = val();
            answer = divi(value1,value2);
        break;
        case 'p':
            value1 = val();
            value2 = val();
            answer = pow(value1,value2);
        break;
        case 'sq':
            value1 = val();
            value2 = val();
            answer = sqr(value1,value2);
        break;
        case 'max2':
            value1 = val();
            value2 = val();
            answer = max2(value1,value2);
        break;
        case 'max3':
            value1 = val();
            value2 = val();
            let val3 = val();
            answer = max3(value1, value2, val3);
        break;
        case 'w':
            str = prompt("Please enter a string");
            answer = wordCount(str);
        break;
        case 'l':
            str = prompt("Please enter a string");
            answer = longest(str);
        break;
        case 'i':
            str = prompt("Please enter a string");
            var str2 = prompt("Please enter the word to search for")
            answer = inst(str, str2);
        break;
        case 'long':
            str = prompt("Please enter a string");
            len = prompt("Please enter a length");
            answer = longer(str, len);
        break;
        default:
            alert('Sorry, that option was not valid');
        break;
    }
     // only print the answer if we calculated one
    if(answer) alert(answer);

}
function options() {
    // get the user inputs
    return prompt('Choose your action (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (p)ower of, (sq)uare root of, (max) of two, (max3) maximum of three values, (w)ord count in string, (l)ongest word in a string, (i)nstances of a word in a string, (long) Give all of the words that are longer than a given length.') || "a";
    debugger;

}
function add(arg, arg2) {
    return arg + arg2;
}
function sub(arg, arg2) {
    return arg - arg2;
}
function multi(arg, arg2) {
    return arg * arg2;
}
function divi(arg, arg2) {
    return arg / arg2;
}
function pow(arg, arg2) {
    return Math.pow(arg, arg2);
}
function sqr(arg, arg2) {
    return Math.sqrt(arg, arg2);
}
function high2(arg, arg2) {
    return Math.max(arg,arg2);
}
function high3(arg, arg2,arg3) {
    return Math.max(arg,arg2,arg3);
}
function wordCount(str) {
    var totalSoFar = 0;
    for (var i = 0; i < str.length; i++)
        if (str[i] === " ") { // if a space is found in str
            totalSoFar++; // add 1 to total so far
            debugger;
    }
    totalSoFar++; // add 1 to totalsoFar to account for extra space since 1 space = 2 words
    return totalSoFar;
}
function longest(str) {
    // Step 1. Split the string into an array of strings
    var strSplit = str.split(' ');
    // var strSplit = "The quick brown fox jumped over the lazy dog".split(' ');
    // var strSplit = ["The", "quick", "brown", "fox", "jumped", "over", "the", "lazy", "dog"];

    // Step 2. Initiate a variable that will hold the length of the longest word
    var count = 0;
    var longestWord;
    // Step 3. Create the FOR loop
    for(var i = 0; i < strSplit.length; i++){
        if(strSplit[i].length > count){ // If strSplit[i].length is greater than the word it is compared with...
            count = strSplit[i].length; // ...then longestWord takes this new value
            longestWord = strSplit[i];
        }
    }
    //Step 4. Return the longest word
    return longestWord; // 6
}
function inst(str, word) {
    // Step 1. Split the string into an array of strings
    var strSplit = str.split(' ');
    var count = 0;
    var words = strSplit.filter(function(array){
            return word == array;
        })
    return words.length;
    }
    

function longer(str, len) {
    // Step 1. Split the string into an array of strings
    var strSplit = str.split(' ');
    var count = 0;
    var words = strSplit.filter(function(array){
            debugger;
            return array > len;
        })
    debugger;
    return words    ;
}
