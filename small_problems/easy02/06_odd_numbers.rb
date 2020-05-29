#for i in 1..99
#  puts i if i.odd?
#end

#counter = 1
#loop do
#  puts counter if counter % 2 == 1
#  counter += 1
#  break if counter > 99
#end

#counter = 0
#loop do
#  break if counter > 99
#  counter += 1
#  next if counter % 2 == 0
#  puts counter
#end

counter = 1
while counter < 100
  puts counter if counter.odd?
  counter += 1
end
