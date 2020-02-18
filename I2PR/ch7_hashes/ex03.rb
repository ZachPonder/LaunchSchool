h1 = { k1: "one",
       k2: "two",
       k3: "three",
       k4: "four"
     }

p h1.keys
p h1.values

h1.each { |k,v| puts "#{k} is #{v}" }

# OR

h1.each_key { |k| p k }
h1.each_value { |v| p v }
