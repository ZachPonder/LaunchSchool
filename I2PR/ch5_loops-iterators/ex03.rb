def count(num)
  puts num
  if num > 0
    count(num - 1)
  end
end

puts "Let's count down from..."
num = gets.chomp.to_i

count(num)
