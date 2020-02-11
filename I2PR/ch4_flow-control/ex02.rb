def all_caps(words)
  char_count = words.chars.count
  if char_count > 10
    puts words.upcase
  else
    puts "<too few characters>"
  end
end

puts "What would you like to say?"
phrase = gets.chomp
all_caps(phrase)
