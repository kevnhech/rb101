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

if arr.include?(last_number)
  puts "The number #{last_number} appears in #{arr}."
else
  puts "The number #{last_number} does not appear in #{arr}."
end