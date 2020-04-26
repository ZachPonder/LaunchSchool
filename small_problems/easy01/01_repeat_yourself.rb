system('clear')

def repeater(str, int)
  int.times { puts "#{str}" }
end

puts "Enter a string: "
user_string = gets.chomp

puts
puts "Enter the number of iterations: "
user_repeat = gets.chomp.to_i

repeater(user_string, user_repeat)

puts
