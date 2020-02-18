browns = { eggs: "yes",
           bacon: "yes",
           cheese: "yes",
           pico: "yes",
           anchovies: "no"                  
         }

p browns
#p browns.has_value?("yes")

if browns.has_value?("yes")
  p browns.select { |k,v| v == "yes" }
end

