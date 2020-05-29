# take a length and width in meters and return the area in both
# meters and feet

SQMETERS_TO_SQFEET = 10.7639
# using the constant is good practice when using a number whose 
# meaning is not immediately obvious when seeing it

def area
  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_f
  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_f

  area_meters = (length * width).round(2)
  area_feet = (area_meters * SQMETERS_TO_SQFEET).round(2)

  puts "The area of the room is #{area_meters} square meters " + \
  "(#{area_feet})"
end

area
