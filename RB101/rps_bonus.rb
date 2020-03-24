def prompt(message)
  puts "=> #{message}"
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

def win_lose_draw?(w, l, d)
  prompt("Your record is #{w} wins, #{l} losses, and #{d} ties")
  if w > l
    prompt('You are the champion!')
  else
    prompt('Better luck next time!')
  end
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
  wins = 0
  losses = 0
  ties = 0
  rounds = 1

  system('clear')

  prompt("Best of 5")

  until wins + losses == 5 do
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
    prompt("You chose '#{VALID_CHOICES[player_choice]}' and Computer chose '#{computer_choice}'")

    if VALID_CHOICES[player_choice] == computer_choice
      prompt("It's a tie!")
      ties += 1
    elsif PLAYER_WINS[player_choice][0..1].include?(computer_choice)
      prompt('You won!')
      wins += 1
    else
      prompt('Computer won!')
      losses += 1
    end

    puts
    rounds += 1

  end

  win_lose_draw?(wins, losses, ties)

  if play_again? == false
    system('clear')
    prompt('Thanks for playing!')
    puts
    continue = false
  end
end
