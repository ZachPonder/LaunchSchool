contact_data = [["joe@email.com","123 Main St.", "555-123-4567"],
          ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

p contacts

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

p contacts
p contact_data

=begin
I didn't think hashes had indexes.  Found that each_with_index in
this case only works when "name" and "hash" are in paretheses

I didn't know how to implement this but I understand how it works:
- "contact_data" has two indexes - 0 for joe's info, 1 for sally's
- "contacts" has two indexes - 0 for joe, 1 for sally
- For each user in "contacts" we select their name, empty hash, and 
  index value and iterate over the "fields" values
- For the first user, Joe (index 0), we set
  :email = contact_data[0][0] - joe's index [0] and first value [0]
- Since we're using .shift that value is removed and the remaining
  values are shifted down, 1 to 0, etc.
- First user, Joe (index 0), next field, :address is set to 
  contact_data[0][0] - joe's index and first value
- When we get to Sally (index 1) we set the first field, :email, to
  contact_data[1][0] - sally's index and the first value
- When the loop complets, "contact_data" is emtpy
=end