# ask for the user's name and greet them by name
# if the name ends with "!" return greeting in all caps

def greeting(name)
  if name.include?('!')
    puts "HELLO, #{name.upcase.delete('!')}. WHY ARE WE YELLING?"
  else
    puts "Hello, #{name}."
  end
end

puts "What name?"
user_name = gets.chomp

greeting(user_name)
