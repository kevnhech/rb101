# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# ask the user for the length of a room in meters
# ask the user for the width of the room in meters
# return the area (l*w) of the room in both square meters and square feet ((l*w) * 10.7639)

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f
area = length * width
square_feet = area * 10.7639
puts "The area of the room is #{area} square meters (#{square_feet.round(2)} square feet)."

# Further Exploration

# Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.

# ask the user for the length of a room in feet
# ask the user for the width of the room in feet
# return the area (l*w) of the room in square feet, square inches (1 sq feet == 144), and square centimeters (1 sq inch == 6.4516)

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f
puts "Enter the width of the room in feet:"
width = gets.chomp.to_f
area = length * width
square_inches = area * 144.0
square_centimeters = area * 929.03
puts "The area of the room is #{area} square feet (#{square_inches.round(2)} square inches and #{square_centimeters} square centimeters)."