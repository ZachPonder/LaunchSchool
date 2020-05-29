#def running_total(num_array)
#  sum = 0
#  num_array.map { |num| sum += num }
#end

def running_total(num_array)
  new_array = []
  num_array.each_with_index { |_, idx| new_array << num_array[0..idx].sum }
  new_array
end


p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
