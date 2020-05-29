# return true if the string is a palindrome, false otherwise
# case, punctuation, and spaces matter

def palindrome?(str)
  str == str.reverse
end

puts palindrome?('madam')
puts palindrome?('Madam')
puts palindrome?("madam i'm adam")
puts palindrome?('356653')
