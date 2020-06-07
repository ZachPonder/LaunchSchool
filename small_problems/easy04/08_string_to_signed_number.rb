DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  new_arr = []
  value = 0
  str.split('').each do |chr|
    next if chr == '-' || chr == '+'
    new_arr << DIGITS[chr]
  end
  new_arr.each { |num| value = 10 * value + num }
  value = 0 - value if str[0] == '-'
  value
end

puts string_to_integer('4321')
puts string_to_integer('-570')
