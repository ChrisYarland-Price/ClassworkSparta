  $(function(){
	//getting element from DOM
  var count = $("count");
  //creating element to add
  var li = $("<li>New THing</li>");
  //add element to DOM.
  $("#list").append(li);


  var done = $("li.done");
  // change html of count span
  $("#count").html('5');

  // add class done to all the elements
  $("li").addClass('done');

  // chained version
  $("#count").html("5").css('color' , '#BBCCAA');

  // create a new element and add it to the list
  $("#list").prepend($("<li>New Item</li>"));

  $('#myButton').click(function(){

  	console.log("Button licked")
  })
  $('#myButton').on("click", function(){

  	console.log("Button licked")
  })
});
$(function() {
    // Getting element from the dom
    var count = $("#count");
    // Creating new element to add to the DOM
    var li = $("<li>New thing</li>");
    // Add element to the DOM
    $("#list").append(li);

    var todos = ["Food shop", "Wash clothes", "Pay bills"];
    // Loop
    $(todos).each(function(index, todo) {
        console.log(todo);
    })
    //.html changing text on page

});