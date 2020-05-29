def prompt(msg)
  puts "=> #{msg}"
end

def maths(a, b)
  prompt("#{a} + #{b} = #{a + b}")
  prompt("#{a} - #{b} = #{a - b}")
  prompt("#{a} * #{b} = #{a * b}")
  prompt("#{a} / #{b} = #{a / b}")
  prompt("#{a} % #{b} = #{a % b}")
  prompt("#{a} ** #{b} = #{a ** b}")
end

def is_valid?(num)
  num.to_i.to_s == num
end

def not_zero?(num)
  num != 0
end

num_a = nil
num_b = nil

loop do
  prompt("Enter the first number:")
  num_a = gets.chomp
  if is_valid?(num_a)
    num_a = num_a.to_i
    break
  else
    prompt("Please enter an integer")
  end
end

loop do
  prompt("Enter the second number:")
  num_b = gets.chomp
  if is_valid?(num_b) && num_b.to_i != 0
    num_b = num_b.to_i
    break
  else
    prompt("Please enter a non-zero integer:")
  end
end

maths(num_a, num_b)
