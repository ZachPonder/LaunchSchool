#SUFFIX = {
#  '0' => 'th',
#  '1' => 'st',
#  '2' => 'nd',
#  '3' => 'rd',
#  '4' => 'th',
#  '5' => 'th',
#  '6' => 'th',
#  '7' => 'th',
#  '8' => 'th',
#  '9' => 'th',
#}
#
#def century(year)
#  century = 0
#  year_prefix = year.to_s.split('')
#  year_suffix = year_prefix.pop(2)
#  year_prefix = year_prefix.join
#  year_suffix = year_suffix.join
#  if year_suffix.to_i > 0
#    century = year_prefix.to_i + 1
#  else
#    century = year_prefix.to_i
#  end
#  puts "It's the #{century}#{SUFFIX[century.to_s.split('').last]} century"
#end

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  puts century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10
  case last_digit
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'
  end
end

century(2000)
century(2001)
century(1965)
century(256)
century(5)
century(10103)
century(1052)
century(1127)
century(11201)
