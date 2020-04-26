# take an array of integers and return the avg of all integers
# array cannot be empty and all numbers must be positive

def average(array)
  if array.is_a?(Array) == false
    puts "input must be array"
    exit
  elsif array.any?(0)
    puts "array cannot contain zero"
    exit
  elsif array.empty?
    puts "array can not be empty"
    exit
  else
    array.sum / array.size
  end
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
puts average([])
