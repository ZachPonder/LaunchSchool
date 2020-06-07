require 'pry'

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9', 
}

def integer_to_string(int)
  new_array = []
  int.digits.reverse.each do |num|
    new_array << DIGITS[num]
  end
  new_array.join
end

def signed_integer_to_string(number)
  if number < 0
    "-#{integer_to_string(-number)}"
  elsif number > 0
    "+#{integer_to_string(number)}"
  else
    integer_to_string(number)
  end
end

  #DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
#
#def integer_to_string(number)
#  result = ''
#  loop do
#    number, remainder = number.divmod(10) # returns array [quotient, remainder]
#    result.prepend(DIGITS[remainder]) 
#    break if number == 0
#  end
#  result
#end
#
#def signed_integer_to_string(number)
#  case number <=> 0 #spaceship returns -1 if left < right, +1 if left > right, or 0
#  when -1 then "-#{integer_to_string(-number)}"
#  when +1 then "+#{integer_to_string(number)}"
#  else integer_to_string(number)
#  end
#end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
