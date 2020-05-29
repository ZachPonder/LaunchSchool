def short_long_short(str1, str2)
#  if str1.size < str2.size
#    puts str1 + str2 + str1
#  else
#    puts str2 + str1 + str2
#  end
  arr = [str1, str2].sort_by { |str| str.size }
  puts arr[0] + arr[1] + arr[0]
end

short_long_short('hi', 'elephant')
short_long_short('gorilla', 'big')
short_long_short('', 'xyz')
