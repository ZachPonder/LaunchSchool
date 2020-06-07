require 'io/console'

SUITS = ['Hearts', 'Spades', 'Clubs', 'Diamonds']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
          'Jack', 'Queen', 'King', 'Ace']

def shuffle_deck
  VALUES.product(SUITS)
end

def prompt(msg)
  puts "--> #{msg}"
end

def busted?(hand)
  total(hand) > 21
end

def deal_card(hand)
  card = DECK.sample
  DECK.delete(card)
  hand << card
end

def total(cards)
  values = cards.map { |card| card[0] }
  sum = 0
  values.each do |value|
    if value == 'Ace' # Aces default to a value of 11
      sum += 11
    elsif value.to_i == 0 # K, Q, J will be '0' when converted to an integer
      sum += 10
    else
      sum += value.to_i # Everything is worth face value
    end
  end

  values.select { |value| value == 'Ace' }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

system('clear')

DECK = shuffle_deck
player_hand = []
dealer_hand = []

2.times { deal_card(player_hand) }
2.times { deal_card(dealer_hand) }

prompt("Dealer shows a #{dealer_hand[0][0]} of #{dealer_hand[0][1]}")
puts
prompt("You have a #{player_hand[0][0]} of #{player_hand[0][1]} and \
a #{player_hand[1][0]} of #{player_hand[1][1]}")
puts

# player turn
answer = nil
loop do
  if busted?(player_hand)
    puts
    prompt("You busted with #{total(player_hand)}. Dealer wins!")
    exit
  end
  prompt("Hit or Stay with #{total(player_hand)}?")
  answer = gets.chomp
  if answer.downcase.chr == 'h'
    deal_card(player_hand)
    prompt("You were dealt a #{player_hand.last[0]} of #{player_hand.last[1]}.")
    puts
  else
    prompt("You stay on #{total(player_hand)}")
    puts
    break
  end
end

# dealer turn
prompt("Dealer shows a #{dealer_hand[1][0]} of #{dealer_hand[1][1]} \
and has #{total(dealer_hand)}.")
until total(dealer_hand) >= 17
  break if busted?(player_hand)
  prompt("...continue")
  puts
  STDIN.getch
  deal_card(dealer_hand)
  prompt("Dealer was dealt a #{dealer_hand.last[0]} of #{dealer_hand.last[1]} \
and has #{total(dealer_hand)}.")
  puts
end

if busted?(dealer_hand)
  prompt("Dealer busted with #{total(dealer_hand)}. You win!")
elsif total(player_hand) > total(dealer_hand)
  prompt("You win with #{total(player_hand)}!")
elsif total(dealer_hand) > total(player_hand)
  prompt("Dealer wins with #{total(dealer_hand)}!")
else
  prompt("It's a draw!")
end
