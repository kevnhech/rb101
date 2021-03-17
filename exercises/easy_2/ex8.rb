# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# ask the user for an integer greater than 0
# initialize variable `integer` that will store the users input
# ask the user to either enter `s` to compute the sum or `p` to compute the product
# initialize variable `compute` that will store the users input
# based on the users input, output a prompt that calculates either the sum or the product of the integers

puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
compute = gets.chomp
sum = (1..integer).to_a.sum
number = 1
product = 1.upto(integer) do |num|
  number *= num
end
if compute == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
elsif compute == 'p'
  puts "The product of the integers between 1 and #{integer} is #{number}."
else
  puts "Error. Please enter a valid input."
end

# Further Exploration

# Try to use #inject in your solution to this problem.

puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
compute = gets.chomp
sum = (1..integer).inject { |sum, n| sum + n }
product = (1..integer).inject { |sum, n| sum * n }

if compute == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
elsif compute == 'p'
  puts "The product of the integers between 1 and #{integer} is #{product}."
else
  puts "Error. Please enter a valid input."
end