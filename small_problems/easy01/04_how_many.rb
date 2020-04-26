# count the number of occurrences of each element in a given array
# words are case-sensitive ('suv' != 'SUV')

system('clear')

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count(array)
  results = {}
  array.each do |str|
    if results.has_key?(str)
      results[str] += 1
    else
      results[str] = 1
    end
  end
  results
end

p count(vehicles)
puts

=begin
LS solution:

def count(array)
  results = {}

  array.uniq.each do |str|
    results[str] = array.count(str) ## vehicles.count('car') => 4 ##
  end

  results.each do |str, count|
    puts "#{str} => #{count}"
  end
end
=end

## Here's a handy method: vehicles.tally 
## => {'car'=>4, 'truck'=>3, 'SUV'=>1, 'motorcycle'=>2}
