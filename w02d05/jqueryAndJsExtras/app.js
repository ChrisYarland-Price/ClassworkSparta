$(function(){

	// setInterval(function(){
	// 	$('ul').append("<li></li>")
	// }, 1000)
	// for (var i = 0; i < 16; i++) {
	
	// 	setTimeout(function(){
	// 		$('ul').append("<li></li>")
	// 	}, i * 1000)
	// }

	$('li').each(function(index, li) {
		setTimeout(function() {
			$(li).slideDown(index * 1500 );
			$(li).fadeOut(index * 500 );
		}, index * 1500)
	})

})