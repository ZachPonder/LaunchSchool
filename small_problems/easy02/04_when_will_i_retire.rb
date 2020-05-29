# display when the user will retire and how many years of work left

puts "What is your age?"
age = gets.chomp.to_i
puts "What age would you like to retire?"
retire = gets.chomp.to_i

current_year = Time.now.year
years_remaining = retire - age
retirement_year = current_year + years_remaining

puts
puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_remaining} years of work to go!"
