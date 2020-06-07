require 'pry'

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

HEX_KEY = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
  '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 
  'E' => 14, 'F' => 15
}

def string_to_integer(str)
  new_arr = []
  value = 0
  str.split('').each { |chr| new_arr << DIGITS[chr] }
  #new_arr.join (.join converts to a string)
  new_arr.each { |num| value = 10 * value + num }
  # 10 * 0 + 4 = 4
  # 10 * 4 + 3 = 43
  # 10 * 43 + 2 = 432
  # 10 * 432 + 1 = 4321 
  value
  #binding.pry
end

def hex_to_int(hex_str)
  new_arr = []
  value = 0
  hex_str.upcase.split('').each { |chr| new_arr << HEX_KEY[chr] }
  new_arr.each { |num| value = 16 * value + num }
  value
end

puts string_to_integer('4321')
puts string_to_integer('570')
puts(string_to_integer('4321') == 4321)
puts(string_to_integer('570') == 570)

puts hex_to_int('4D9F')
puts hex_to_int('4d9f')
puts(hex_to_int('4D9F') == 19871)
puts(hex_to_int('4d9f') == 19871)
