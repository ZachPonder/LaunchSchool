# prompt for bill amount and tip rate
# compute the tip and display both tip and total amount

def tippy_tip(bill, rate)
  tip = (bill * (rate/100)).round(2)
end

system('clear')

puts "What is the bill?"
bill = gets.chomp.to_f
puts

puts "what is the tip percentage?"
rate = gets.chomp.to_f
puts

puts "The tip is $#{tippy_tip(bill, rate)}"
puts "The total is $#{bill + tippy_tip(bill, rate)}"
