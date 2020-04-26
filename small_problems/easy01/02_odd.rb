# take one integer (pos, neg, 0)
# return *true* if the absolute value is odd
# may not use #odd? or #even?

system('clear')

def is_odd?(int)
  puts (int.abs) %2 != 0
end

puts "Integer: "
user_int = gets.chomp.to_i

is_odd?(user_int)
