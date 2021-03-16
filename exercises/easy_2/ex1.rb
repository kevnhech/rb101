# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# output: a random number between 20 and 200.

# return a sentence along with a randomly selected integer that is in a range of 20 to 200

puts "Teddy is #{rand(20..200)} years old!"

# Further Exploration

# Modify this program to ask for a name, and then print the age for that person. For an extra challenge, use "Teddy" as the name if no name is entered.

# input: name of the user
# output: name of the user including a randomly selected integer
# rules: the name will equal `Teddy` if no name is entered

# ask the user for their name
# initialize variable `name` that will equal to the users input
# reassign `name` to `Teddy` if it's an empty string
# return the name and the randomly selected number in the form of a string

puts "Please enter your name."
name = gets.chomp
name = "Teddy" if name == ""
puts "#{name} is #{rand(20..200)} years old!"