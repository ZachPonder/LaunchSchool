require "pry"
puts "Wanna play a guessing game? (Y)es/(N)o"
game = gets.chomp.downcase

play = true

while play == true
  if game == 'y'
    puts "How many numbers do you want to use?"
    num = gets.chomp.to_i
  else
    puts "Ok, see ya!"
    exit!
  end

  new_num = rand(num)

  puts "OK, I'm thinking of a number between 1 and #{num}:"
  guess = gets.chomp.to_i
  
  i = 1

  while guess != new_num
    i += 1
    if guess > new_num
      puts "Lower..."
      guess = gets.chomp.to_i
    elsif guess < new_num
      puts "Umm...higher"
      guess = gets.chomp.to_i
    end
  end

  puts "You guessed it!  It was #{new_num}."
  puts i > 1 ? "You took #{i} guesses." : "First try!"
  
  puts "Wanna play again?  (Y)es/(N)o"
  play = gets.chomp.downcase
  
  if play == "y"
    play = true
  else
    puts "OK, see ya!"
    play = false
  end
end
