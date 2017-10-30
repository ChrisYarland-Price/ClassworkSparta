// write code here
document.addEventListener("DOMContentLoaded", function() {
	var button = document.getElementById('myButton') 
	var form = document.getElementById('myForm')
	var buttons = document.getElementsByClassName('myButtons');

	button.addEventListener("click", function(){
		console.log(this);
	});

	// button.addEventListener("click", handleFunc);

	// function handleFunc() {
	// 	console.log("Secondfunction response Clicked");
	// }
	form.addEventListener('submit', function(event) {
		event.preventDefault();
		var input = document.getElementById('firstname')
		if (input.value) {
			console.log(input.value + " is your name.")
		} else {
			alert("Please enter a name before submitting the form.")
		}
		return this.submit();
	});
	for (var i = 0; i < buttons.length; i++) {
		buttons[i].addEventListener('click', function(){
			console.log(this.value + " Clicked")
		})
	}
});
