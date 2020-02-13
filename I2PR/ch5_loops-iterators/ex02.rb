loop do
  puts "Hey, what's your name?  (Type STOP to end)"
  name = gets.chomp
  if name == "STOP"
    break
  else
    puts "Hey, #{name}!  Welcome aboard!"
  end
end
