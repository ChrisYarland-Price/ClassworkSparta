var listItems = ["Go out","Come back" , "Buy food" , "Eat food"];

//For every entry in the listItems array it calls the append function with it as an argument.
for (let i = 0; i < listItems.length; i++) {
	addListItem(listItems[i]);
}
//Gets an array containing the li elements on the page.
let classChange = document.getElementsByTagName('li');
// every other item in the array just before gets a new class name of even.
for (let i = 0; i < classChange.length; i += 2) {
	classChange[i].className += " even";
}

//Counts the amount of entries in the classChange array and then sets the HTML in the count ID'd element to that number
let counter = document.getElementById('count');
counter.innerHTML = classChange.length;






//Function that appends the argument value to the ul defined by List.
function addListItem(value) {
    var newItem = document.createElement("li");
    newItem.innerHTML = value;
    document.getElementById('list').appendChild(newItem);
}



" ".repeat(4 * depth)
"foo".repeat(3)
