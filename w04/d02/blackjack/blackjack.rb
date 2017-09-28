def deal_deck
	deck = []
  deck.pop(deck.length)
  # cards = [2,3,4,5,6,7,8,9,10,{"Jack" => 10},{"Queen" => 10},{"King" => 10},{"Ace"  => 10}]
	cards = [2,3,4,5,6,7,8,9,10,10,10,10,11]
	4.times { |n| cards.each{ |e| deck.push(e)} }
	deck = shuffle_deck(deck)
end

def shuffle_deck(deck)
	deck.shuffle!
end

def deal_card(deck)
	deck.shift
end
def deal_hands
	player_hand = []
	dealer_hand = []
  player_hand.pop(player_hand.length)
  dealer_hand.pop(dealer_hand.length)
  stick = "n"

	deck = deal_deck
	2.times{ 
		player_hand << deal_card(deck)
		dealer_hand << deal_card(deck)
	}
  puts dealer_hand
  dealer_hand = bust_check(dealer_hand, deck)
  user_input("Dealer Shows #{dealer_hand[0]}")
  player_hand = check_to_stick_player(player_hand, deck, stick)
  # check_to_stick(dealer_hand, deck, stick)
  winner(dealer_hand, player_hand)
 
  dealer_hand = dealer_another_card(dealer_hand, deck)
end

def winner(dealer_hand, player_hand)
  if dealer_hand.reduce(:+) > player_hand.reduce(:+)
    puts "Dealer Wins!"
  else
    puts "Player Wins!"
  end
  deal_hands
end

def check_to_stick_player(hand, deck, stick)
  while(stick != "Y")
    hand = bust_check(hand, deck)
    if(hand != false)
      stick = user_input("You have #{hand.reduce(:+)}. Would you like to Stick Y or N")
      hand = another_card(hand, deck, stick)
    end
  end
  hand
end

def bust_check(hand, deck)
  if(hand.reduce(:+) > 21)
    if(user_input("Score #{hand.reduce(:+)}. Bust! Would you like to play again?") == "Y")
      deal_hands
    else
      false
    end
  else
    hand
  end
end

def another_card(hand, deck, stick)
    hand << deal_card(deck)
end

def user_input(message)
  puts message
  gets.chomp.upcase!
end
    
def dealer_another_card(hand, deck)
  while(hand.reduce(:+) < 18) 
    hand << deal_card(deck)
  end
end







deal_hands