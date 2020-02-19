hash_a = {one: "one"}
hash_b = {:one => "one"}

hash_c = Hash.new
hash_c[:one] = "one"

p hash_a
p hash_b
p hash_c
