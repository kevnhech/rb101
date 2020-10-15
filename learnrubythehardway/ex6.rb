types_of_people = 10 # assigns an integer to a variable
x = "There are #{types_of_people} types of people." # assigns a string to a variable. inside that string, a variable is being called
binary = "binary" # assigns a string to a variable
do_not = "don't" # assigns a string to a variable
y = "Those who know #{binary} and those who #{do_not}." # assigns a string to a variable. inside that string two variables are being called

puts x # prints variable x
puts y # prints variable y

puts "I said: #{x}." # prints a string. inside that string a variable is called
puts "I also said: '#{y}'." # prints a string. inside that string a variable is called

hilarious = false # assigns boolean false to a variable
joke_evalution = "Isn't that joke so funny?! #{hilarious}" # assigns a string to a variable. inside the string, a variable is called

puts joke_evalution # prints a variable

w = "This is the left side of..." # assigns a string to a variable
e = "a string with a right side." # assigns a string to a variable

puts w + e # prints both variables together