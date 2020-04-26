# take a positive integer and return a string of alternating 1s and 0s
# the length of the integer's value (6 = 101010). always start with 1

def stringy(int, set = 1)
  new_str = ''
  counter = 0
  loop do
    if set == 1
      new_str << '1'
      counter += 1
      break if counter == int
      new_str << '0'
      counter += 1
      break if counter == int
    elsif set == 0
      new_str << '0'
      counter += 1
      break if counter == int
      new_str << '1'
      counter += 1
      break if counter == int
    end
  end
  new_str
end

puts stringy(7, 0)
