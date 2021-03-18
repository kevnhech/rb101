# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

# ask the user to enter a number
# assign the input to `x`
# ask the user to enter a number
# assign the input to `y`
# return the mathematical equation of `x` and `y` using various operators

puts "==> Enter the first number:"
x = gets.chomp.to_i
puts "==> Enter the second number:"
y = gets.chomp.to_i
puts "==> #{x} + #{y} = #{x + y}"
puts "==> #{x} - #{y} = #{x - y}"
puts "==> #{x} * #{y} = #{x * y}"
puts "==> #{x} / #{y} = #{x / y}"
puts "==> #{x} % #{y} = #{x % y}"
puts "==> #{x} ** #{y} = #{x ** y}"
