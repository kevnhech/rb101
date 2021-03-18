# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# initialize `arr` and assign it to an empty array
# prompt the user to enter 6 numbers, then assign them to variables
# after every prompt, append the users input to `arr`
# initialize an if/else statement
#   inform the user whether the last number they entered appears in `arr` or not
# end the block

arr = []

puts "==> Enter the 1st number:"
first = gets.chomp.to_i
arr << first
puts "==> Enter the 2nd number:"
second = gets.chomp.to_i
arr << second
puts "==> Enter the 3rd number:"
third = gets.chomp.to_i
arr << third
puts "==> Enter the 4th number:"
fourth = gets.chomp.to_i
arr << fourth
puts "==> Enter the 5th number:"
fifth = gets.chomp.to_i
arr << fifth
puts "==> Enter the last number:"
last_number = gets.chomp.to_i

if arr.any?(last_number)
  puts "The number #{last_number} appears in #{arr}."
else
  puts "The number #{last_number} does not appear in #{arr}."
end
