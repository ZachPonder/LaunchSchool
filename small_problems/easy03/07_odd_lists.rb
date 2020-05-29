# write a method that returns an array containing only the odd elements of an
# array that is passed in as an argument

def oddities(arry)
  odd_array = []
  arry.each_with_index do |element, idx|
    odd_array << element if idx.even?
  end
  odd_array
end

def oddities2(arry)
  arry.select { |element| arry.index(element).even? }
end

test = [2, 3, 4, 5, 6]
test2 = ['abc', 'def']

p oddities(test) #should return [2, 4, 6]
p oddities(test2) #should return 'abc'

p oddities2(test) #should return [2, 4, 6]
p oddities2(test2) #should return 'abc'
