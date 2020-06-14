for i in 0..100
  num = (i.to_s + '5').to_i
  eval = num ** 2
  test = ((i * (i + 1)).to_s + '25').to_i
  puts "#{num} squared is #{eval} and is #{eval == test}."
end

