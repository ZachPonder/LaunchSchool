# take 1 pos int
# return array of individual digits contained in that int

system('clear')

def digit_list(int)
  p int.to_s.chars.map { |num| num.to_i }
end

puts "Enter an integer: "
user_int = gets.chomp.to_i

digit_list(user_int)
