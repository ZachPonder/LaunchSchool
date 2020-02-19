a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

p a

arr = a.map { |word| word.split }
arr.flatten!

p arr
