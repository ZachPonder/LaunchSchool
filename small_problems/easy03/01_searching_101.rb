# take 6 numbers from the user and say whether or not the 6th number was among the first 5
require 'pry'

def prompt(msg)
  puts "=> #{msg}"
end

ordinals = %w(1st 2nd 3rd 4th 5th last)

user_array = []
counter = 0
loop do
  break if counter > 5
  prompt("Enter the #{ordinals[counter]} number:")
  user_num = gets.chomp
  if user_num.to_i.to_s == user_num
    user_array << user_num.to_i
    counter += 1
  else
    prompt("Please enter a whole number")
  end
end

last_number = user_array.pop

if user_array.include?(last_number)
  prompt("The number #{last_number} appears in #{user_array}")
else
  prompt("The number #{last_number} does not appear in #{user_array}")
end
