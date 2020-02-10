puts "Enter your first name:"
fname = gets.chomp
fname.capitalize!

puts "Enter your last name:"
lname = gets.chomp
lname.capitalize!

puts fname + " " + lname
puts "#{fname} #{lname}"
