require 'yaml'
MESSAGES = YAML.load_file('apr_messages.yml')

def valid_num?(number)
  if number.include?('.') && number.end_with?('0') # I had issues with decimals ending in zero
    number.to_f.to_s == number.delete_suffix('0') # this was the best solution I could come up with
  elsif number.include?('.')
    number.to_f.to_s == number
  else
    number.to_i.to_s == number
  end
end

def convert_monthly_rate(apr)
  (apr.to_f / 100) / 12
end

def monthly_payment(loan_amt, monthly_rate, months)
  loan_amt.to_f * (monthly_rate / (1 - (1 + monthly_rate)**(-months.to_f)))
end

puts MESSAGES['welcome']
puts

continue = true
while continue
  puts MESSAGES['loan_amt']
  loan_amt = gets.chomp
  loop do
    break if valid_num?(loan_amt)
    puts
    puts MESSAGES['valid_num']
    loan_amt = gets.chomp
  end

  puts
  puts MESSAGES['apr']
  apr = gets.chomp
  loop do
    break if valid_num?(apr)
    puts
    puts MESSAGES['valid_num']
    apr = gets.chomp
  end

  puts
  puts MESSAGES['duration']
  months = gets.chomp
  loop do
    break if valid_num?(months)
    puts
    puts MESSAGES['valid_num']
    months = gets.chomp
  end

  monthly_rate = convert_monthly_rate(apr)
  payment = monthly_payment(loan_amt, monthly_rate, months)

  puts
  puts "Your monthly payment is $#{payment.round(2)}"

  puts
  puts MESSAGES['again']
  again = gets.chomp.chr.downcase
  if again == 'n'
    puts MESSAGES['thanks']
    continue = false
  end
end
