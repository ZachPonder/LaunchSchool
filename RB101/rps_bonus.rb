require 'io/console'

def prompt(message)
  puts "=> #{message}"
end

def round_winner(player_val, player_key, computer)
  if player_val == computer
    prompt("It's a tie!")
  elsif player_key.include?(computer)
    prompt("You won!")
  else
    prompt("Computer won!")
  end
end

def win_loss_counter(wins_array, player_val, player_key, computer)
  if player_val == computer
    wins_array[2] += 1
  elsif player_key.include?(computer)
    wins_array[0] += 1
  else
    wins_array[1] += 1
  end
end

def overall_winner(win, lose, draw)
  prompt("Your record is #{win} wins, #{lose} losses, and #{draw} ties...")
  if win > lose
    prompt('You are the champion!')
  else
    prompt('Better luck next time!')
  end
end

def continue_game
  puts "Press any Key"
  STDIN.getch
  puts
end

def play_again?
  response = nil
  loop do
    puts
    prompt("Would you like to play again? (Y/N)")
    response = gets.chomp.chr.downcase
    break if response == 'y' || response == 'n'
  end
  response == 'y'
end

VALID_CHOICES = {
  r: 'rock',
  p: 'paper',
  sc: 'scissors',
  l: 'lizard',
  sp: 'spock'
}

PLAYER_WINS = {
  r: ['scissors', 'lizard'],
  p: ['rock', 'spock'],
  sc: ['paper', 'lizard'],
  l: ['paper', 'spock'],
  sp: ['scissors', 'rock']
}

continue = true

while continue
  win_lose_draw = [0, 0, 0]
  rounds = 1

  system('clear')

  prompt("Best of 5")

  until win_lose_draw[0] == 3 || win_lose_draw[1] == 3
    player_choice = nil
    computer_choice = VALID_CHOICES.to_a.sample[1]
    prompt("Round #{rounds}...Fight!")
    puts

    loop do
      prompt('Choose One:')
      VALID_CHOICES.each do |abbr, choices|
        puts "--> '#{abbr}' for '#{choices}'"
      end
      player_choice = gets.chomp.downcase.to_sym
      break if VALID_CHOICES.key?(player_choice)
      prompt("Please make a valid selection")
    end

    puts
    prompt("You chose '#{VALID_CHOICES[player_choice]}' "\
           "and Computer chose '#{computer_choice}'")

    round_winner(VALID_CHOICES[player_choice], PLAYER_WINS[player_choice],
                 computer_choice)

    win_loss_counter(win_lose_draw, VALID_CHOICES[player_choice],
                     PLAYER_WINS[player_choice], computer_choice)

    puts
    rounds += 1
    continue_game
    system('clear')
  end

  overall_winner(win_lose_draw[0], win_lose_draw[1], win_lose_draw[2])

  if play_again? == false
    system('clear')
    prompt('Thanks for playing!')
    puts
    continue = false
  end
end
