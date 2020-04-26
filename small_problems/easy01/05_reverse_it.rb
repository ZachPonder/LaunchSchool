# take a string and return a new string with words in reverse order

def reverse_string(str)
  new_str = str.split.reverse.join(' ')
  new_str
end

puts reverse_string('This is just a test')
