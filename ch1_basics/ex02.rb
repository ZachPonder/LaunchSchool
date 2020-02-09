puts "Enter a 4 digit integer"
four_digit = gets.chomp.to_i

thou = four_digit / 1000
hund = four_digit % 1000 / 100
tens = four_digit % 100 / 10
ones = four_digit % 10

puts "thousands: #{thou}, hundreds: #{hund}, tens: #{tens}, ones: #{ones}"
