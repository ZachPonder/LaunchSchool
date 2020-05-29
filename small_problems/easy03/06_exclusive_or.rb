# write a method called "xor" that returns true if exactly one of the arguments
# is truthy, otherwise return false

#def xor?(arg1, arg2)
#  if arg1 == true && arg2 == false
#    true
#  elsif arg2 == true && arg1 == false
#    true
#  else
#    false
#  end
#end

#def xor?(arg1, arg2)
#  return true if arg1 && !arg2
#  return true if arg2 && !arg1
#  false
#end

#def xor?(arg1, arg2)
#  (arg1 && !arg2) || (arg2 && !arg1)
#end

def xor?(arg1, arg2)
  [arg1, arg2].count(true) == 1
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)
