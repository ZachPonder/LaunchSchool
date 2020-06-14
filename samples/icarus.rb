loop do

  puts "What number would you like to check?"
  num = gets.chomp.to_i

  i = 0

  until num == 1
    if num.even?
      puts num = num / 2
    else
      puts num = num * 3 + 1
    end
    i += 1
  end

  puts "#{i} steps to 1"
  puts
    
end
