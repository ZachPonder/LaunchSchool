# ask for 2 numbers
# ask for type of operation (add, sub, mult, div)
# display result

# inputs: num_a; num_b; mathematical operation
# outputs: result of selected operation

# verify the user inputs a valid number
# give an error if the user attempts division by zero

# ask for a number (num_a)
# ask for a second number (num_b)
# verify both inputs are valid - allow floats, integers, and zero
# ask for an operation to perform:
# - if add: sum = num_a + num_b
# - if sub: diff = num_a - num_b
# - if mult: prod = num_a * num_b
# - if div: quot = num_a / num_b; give error if num_b is zero
# diplay the result
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def valid_number?(number)
  ((number.to_f.to_s == number) || (number.to_i.to_s == number))
end

def add(a, b)
  "#{a} + #{b} = #{a + b}"
end

def sub(a, b)
  "#{a} - #{b} = #{a - b}"
end

def mult(a, b)
  "#{a} * #{b} = #{a * b}"
end

def div(a, b)
  "#{a} / #{b} = #{a / b}"
end

num_a = nil
num_b = nil

continue = true

while continue
  loop do
    puts MESSAGES['num_a']
    num_a = gets.chomp

    puts MESSAGES['num_b']
    num_b = gets.chomp

    break if valid_number?(num_a) && valid_number?(num_b)

    puts
    puts MESSAGES['valid_false']
    puts
  end

  num_a = num_a.to_f
  num_b = num_b.to_f

  operation_prompt = <<-PROMPT

Would you like to:
  (A)dd
  (S)ubtract
  (M)ultiply
  (D)ivide
  (Q)uit?

  PROMPT

  puts(operation_prompt)
  operation = gets.chomp.chr.downcase

=begin
  if operation == 'a'
    puts add(num_a, num_b)
  elsif operation == 's'
    puts sub(num_a, num_b)
  elsif operation == 'm'
    puts mult(num_a, num_b)
  elsif operation == 'd' && num_b != 0
    puts div(num_a, num_b)
  elsif operation == 'd' && num_b == 0
    puts "Sorry, we can't divide by zero"
  elsif operation == 'q'
    continue = false
    exit
  else
    puts "Invalid operation"
  end
=end

  case operation
  when 'a'
    puts add(num_a, num_b)
  when 's'
    puts sub(num_a, num_b)
  when 'm'
    puts mult(num_a, num_b)
  when 'd'
    if num_b == 0
      puts MESSAGES['div_zero']
      puts
    else
      puts div(num_a, num_b)
    end
  end

  puts MESSAGES['repeat']
  again = gets.chomp.chr.downcase
  continue = false if again == 'n'

end
