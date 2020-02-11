puts "Enter a number between 0 and 100"
num = gets.chomp.to_i

if (num >= 0 && num <= 50)
  puts "#{num} falls in the <0 to 50> range"
elsif (num >= 51 && num <= 100)
  puts "#{num} is in the <51 - 100> range"
else
  puts "#{num} is out of range - try again."
end
