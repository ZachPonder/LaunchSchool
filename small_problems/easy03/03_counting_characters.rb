# ask for a word or phrase and return the total number of characters 
# not including spaces

def prompt(msg)
  puts "==> #{msg}"
end

def split_and_count(phrase)
  phrase = phrase.split('')
  phrase.delete(' ')
  phrase.count
end

prompt "Enter a word or phrase:"
phrase = gets.chomp

prompt("There are #{split_and_count(phrase)} characters in \"#{phrase}\".")
