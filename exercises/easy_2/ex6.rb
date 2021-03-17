# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# print every odd number from 1 to 99 using a method that iterates through numbers 1 thorugh 99

1.upto(99) do |num|
  puts num if num.odd?
end

# Further Exploration

# Repeat this exercise with a technique different from the one you just used, and different from the solution shown above. You may want to explore the use Integer#upto or Array#select methods, or maybe use Integer#odd?

# initialize `arr` and assign it to the following: get a range of numbers 1 to 99, then use them as elements of an array
# iterate through the array
#   call a method on the range of integers to test them if they're an odd number
# end the block
# return `arr`

arr = (1..99).to_a.select do |num|
  num.odd?
end

puts arr