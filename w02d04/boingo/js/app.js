$(function(){

	$('.message').append($('<h2>'+"Hello Players Welcome to the Game please click start."+'</h2>'));
	$('.message').append($('<button class="start">'+"Start"+'</button>'));
	var playerDisplay = $('#player1');
	var player2Display = $('#player2');
	var player = generatePlayerNumbers();
	var player2 = generatePlayerNumbers();
	start();
	run(player, player2);
	//player is dealt a hand of numbers randomely. 
	//make an array of numbers generate a random number then slice a number out of the array at the random number position. 




	function run(player, player2) {
					
	var player = generatePlayerNumbers();
	var player2 = generatePlayerNumbers();
	showPlayerNumbers(player , playerDisplay);
	showPlayerNumbers(player2, player2Display);	
	yellButtonListner(player, player2);
	}

	function showPlayerNumbers(nums, disp) {
		$(nums).each(function(index, num){
			ballMaker(num, disp);
		});
		// for (var i = 0; i < num.length; i++) {
		// 	ballMaker(num[i], playerDisplay)
		// }	
	}
	function ballMaker(number, display){
		display.append($("<span></span>").toggleClass("ball").html(number));
		// var ball = document.createElement('span');
		// ball.className = "ball";
		// ball.innerHTML = number;	
		// display.appendChild(ball);
		
	}
	function generatePlayerNumbers(){
		var numbers = [1,2,3,4,5,6,7,8,9,10];
		var player = [];
		for (var i = 0; i < 3; i++) {
			player.push(selectNumber(numbers));
		}
		return player;
	} 

	function selectNumber(numbers) {
		var randomNumber = Math.floor(Math.random() * numbers.length);
		var number = numbers.splice(randomNumber, 1)[0];
		return number;
	}
	function yellButtonListner(playernumbers , play2){
		var yellNum = [1,2,3,4,5,6,7,8,9,10];
		$('#shout').click( function(){
			var selectedNumbers = selectNumber(yellNum);
			ballMaker(selectedNumbers, $('#yelledNumbers'));
			compareBalls(selectedNumbers, playerDisplay, player2Display, playernumbers, play2);
		});
	}	
	function start(){
		$('.start').click( function(){
			$('.message').children().remove();
			$('.game').show('fast');
		});
	}

	function compareBalls(selectNumber, display, player2Display, player, player2) {
		var index = player.indexOf(selectNumber);
		var index2 = player2.indexOf(selectNumber);
		if (index != -1) {
			display.children()[index].remove();
			player.splice(index, 1);
		}
		if( index2 != -1){
			player2Display.children()[index2].remove();
			player2.splice(index2, 1);
		}
		isEmpty(player, player2);
			
	}
	function isEmpty(player, player2) {
	debugger
		if (player2.length === 0 && player.length === 0) {
			$('.message').append($('<h1>'+"It's a Draw"+'</h1>'));

			run(player, player2);
		}else if (player.length === 0){
			$('.message').append($('<h1>'+"PLayer 1 Wins"+'</h1>'));
			$('.player').children().remove();
			run(player, player2);
		}else if(player2.length === 0){
			$('.message').append($('<h1>'+"PLayer 2 Wins"+'</h1>'));
			$('.player').children().remove();
			run(player, player2);

		}
	}
		// put bingo board on the page. 
			//.innerHTML


		
 
	//Yelled  out numbers are yelled out on click 
		//click event 
		// array of starting numbers randomely selected


	// If yelled out number is in player hand 
		//remove number from player.

	// Put yelled out numbers on page 


	//if player has no numbers 
		//BOINGO


	// Add multiple players. 

});
		//console.log(player)	
