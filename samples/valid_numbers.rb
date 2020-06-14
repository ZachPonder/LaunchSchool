def valid_number?(number)
  (number.to_i.to_s == number) && (number.to_i != 0)
end

num_a = nil
num_b = nil

continue = true
while continue
  loop do
    puts "Enter a non-zero integer:"
    num_a = gets.chomp

    puts "And another..."
    num_b = gets.chomp

    break if (valid_number?(num_a) && valid_number?(num_b))
    puts "Non-zero integers only, please."
  end

  num_a = num_a.to_i
  num_b = num_b.to_i

  if (num_a < 0) || (num_b < 0)
    puts "#{num_a} + #{num_b} = #{num_a + num_b}"
    continue = false
  else
    puts "Let's make one of them negative."
  end
end
