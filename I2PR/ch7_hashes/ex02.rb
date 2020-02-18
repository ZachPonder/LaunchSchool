# merge method

=begin
merge - returns a new hash; non-destructive
merge! - overwrites the existing hash; destructive

- entries with duplicate keys will use the value from the "other" hash unless otherwise
  specified in a block { | key, oldval, newval | block }
=end

h1 = { a: 100, b: 200, c: 300}
h2 = { b: 164, c: 238, d: 400}

p h1
p h2

p h1.merge(h2)                  # duplicate values overwritten by h2
p h1.merge(h2) { |k,v1,v2| v1 } # duplicate values preserved from h1
p h1.merge(h2) { |k,v1,v2| v2 } # duplicate values overwritten by h2 (default behavior)

#merge! works the same way but overwrites the existing hash
