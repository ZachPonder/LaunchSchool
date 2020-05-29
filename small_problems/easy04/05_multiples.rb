#def multisum(target_num)
#  multiples = []
#  for i in 1..target_num
#    multiples << i if (i % 3 == 0 || i % 5 == 0)
#  end
#  puts multiples.sum
#end

def multisum(target_num)
  multiples = (1..target_num).select { |num| (num % 3 == 0 || num % 5 == 0) }
  puts multiples.sum
end

multisum(3)
multisum(5)
multisum(10)
multisum(1000)
