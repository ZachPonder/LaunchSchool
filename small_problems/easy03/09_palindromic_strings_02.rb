def real_palindrome?(str)
  valid_chars = []
  ('a'..'z').each { |chr| valid_chars << chr }
  ('0'..'9').each { |chr| valid_chars << chr }
  str = str.downcase.split('')
  str.each { |chr| str.delete(chr) if !valid_chars.include?(chr) }
  str == str.reverse
end

puts real_palindrome?('madam')
puts real_palindrome?('Madam')
puts real_palindrome?("Madam, I'm Adam")
puts real_palindrome?('356653')
puts real_palindrome?('356a653')
puts real_palindrome?('123ab321')
