require 'pry'

#DIGITS = {
#  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
#  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9', 
#}
#
#def integer_to_string(num)
#  new_array = []
#  num.digits.reverse.each { |num| new_array << DIGITS[num] }
#  new_array.join
#end

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    binding.pry
    number, remainder = number.divmod(10) # returns array [quotient, remainder]
    result.prepend(DIGITS[remainder]) 
    break if number == 0
  end
  result
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
