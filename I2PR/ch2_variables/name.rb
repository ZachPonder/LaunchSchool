puts "Enter your first name:"
f_name = gets.chomp.capitalize

puts "And your last name:"
l_name = gets.chomp.capitalize

name = f_name + " " + l_name

puts "Hi, #{name}.  Welcome to Ruby!"

10.times { puts name }
