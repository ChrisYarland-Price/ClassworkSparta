function addTwo(x,y){
  return x + y;
}
function addThree(a,b,c){
  return a + b + c;
}
function multiplyTwo(x,y){
  return x * y;
}
function reverseWord(word){
  return word.split("").reverse().join("");
}
function increaseByPercentage(x,y){
  return x +=  x * y / 100
}
function celciusToFahrenheit(x){
  return x * 9 / 5 + 32;
}
function fahrenheitToCelcius(x) {
  return (x - 32) / 9 * 5;
}
function stripVowels(word){
  return word.replace(/[aeiou]/gi, '');
}

// do not delete
runTests();