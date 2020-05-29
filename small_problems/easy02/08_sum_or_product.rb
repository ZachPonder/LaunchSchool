require 'pry'

def prompt(msg)
  puts "=> #{msg}"
end

def sum_or_product(num, operator)
  user_defined_range = Range.new(1, num)
  sum = 0
  product = 1
  if operator == 's'
    user_defined_range.each do |i|
      sum += i
    end
    prompt("The sum of integers from 1 through #{num} is #{sum}")
  elsif operator == 'p'
    user_defined_range.each do |i|
      product *= i
    end
    prompt("The product of integers from 1 through #{num} is #{product}")
  else
    prompt("Sorry, that's an unkown operation.")
  end
end

prompt("Enter a positive integer:")
user_num = gets.chomp.to_i

prompt("Enter 's' to compute the sum; Enter 'p' to compute the product:")
user_operator = gets.chomp.split.first.downcase

sum_or_product(user_num, user_operator)
