contact_data = [["joe@email.com","123 Main St.", "555-123-4567"],
            ["sally@email.com","404 Not Found Dr.","123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

p contacts

contacts.each_key do |name|
  if name == "Joe Smith"
    x = 0
    contacts[name][:email] = contact_data[x][0]
    contacts[name][:address] = contact_data[x][1]
    contacts[name][:phone] = contact_data[x][2]
  elsif name == "Sally Johnson"
    x = 1
    contacts[name][:email] = contact_data[x][0]
    contacts[name][:address] = contact_data[x][1]
    contacts[name][:phone] = contact_data[x][2]
  end
end

p contacts

p "Joe Smith email: #{contacts["Joe Smith"][:email]}"
p "Sally Johnson phone: #{contacts["Sally Johnson"][:phone]}"
