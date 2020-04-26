# take a string and return it with only 5 or more letter words reversed

def reverse_string(str)
  results = str.split
  new_str = results.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  new_str.join(' ')
end

puts reverse_string("This is a really messy test")
puts reverse_string("Launch School")
