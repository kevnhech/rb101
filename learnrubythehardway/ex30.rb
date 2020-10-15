people = 30 # Assigns object value to local variable.
cars = 40 # Assigns an object value to a local variable.
trucks = 15 # Assigns an object value to a local variable.


if cars > people # Opens an if-statement block then compares two variables if one is greater than the other.
  puts "We should take the cars." # Prints a string to the console if the if-statement returns true.
elsif cars < people # Opens an elsif-statement block then compares two variables if one is less than the other.
  puts "We should not take the cars." # Prints a string to the console if the elsif-statement returns true.
else # Opens an else-statement block.
  puts "We can't decide." # Prints a string to the console if the if and elsif statements fail to be true.
end # Closes the if-statement block.

if trucks > cars # Opens an if-statement block then compares two variables to see if one is greater than the other.
  puts "That's too many trucks." # Prints a string to the console if the variables comparing return true.
elsif trucks < cars # Opens an elsif-statement block then compares two variables to see if one is less than the other
  puts "Maybe we could take the trucks." # Prints a string to the console if the elsif-statement returns true.
else # Opens an else-statement block.
  puts "We still can't decide." # Prints a string to the console if the if and elsif statement fail to be true.
end # Closes the if-statement block.

if people > trucks # Opens an if-statement block then compares two variables to see if one is greater than the other.
  puts "Alright, let's just take the trucks." # Prints a string to the console if the if-statement returns true.
else #  Opens an else-statement block.
  puts "Fine, let's stay home then." # Prints a string to the console if the if and elsif statement fail to be true.
end # Closes the if-statement block.