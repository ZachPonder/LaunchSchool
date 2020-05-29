#def leap_year?(year)
  #if year % 4 == 0
  #  if year % 100 == 0 && year % 400 == 0
  #    true
  #  elsif year % 100 == 0 && year % 400 != 0
  #    false
  #  else
  #    true
  #  end
  #else
  #  false
  #end
#end

#def leap_year?(year)
#  if year % 400 == 0
#    true
#  elsif year %100 == 0
#    false
#  else
#    year % 4 == 0
#  end
#end

def leap_year?(year)
  if year >= 1752
    (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
  else
    year % 4 == 0
  end
end

puts leap_year?(2016)
puts leap_year?(2015)
puts leap_year?(2100)
puts leap_year?(2400)
puts leap_year?(240000)
puts leap_year?(240001)
puts leap_year?(2000)
puts leap_year?(1900)
puts leap_year?(1752)
puts leap_year?(1700)
puts leap_year?(1)
puts leap_year?(100)
puts leap_year?(400)
