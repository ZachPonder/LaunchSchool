#def ascii_value(str)
#  total = 0
#  counter = 0
#  while counter < str.size
#    total += str[counter].ord
#    counter += 1
#  end
#  total
#end

def ascii_value(str)
  total = 0
  str.each_char { |chr| total += chr.ord }
  total
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
