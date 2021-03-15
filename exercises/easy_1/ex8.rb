# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

# input: an array of integers
# output: the average of all numbers in the array
# rules: the array will never be empty
#        the numbers will always be positive integers
#        the result should be an integer

# enter a mathematical equation that returns the mean of integers in the array

def average(array)
  array.sum / array.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Further Exploration

# Currently, the return value of average is an Integer. When dividing numbers, sometimes the quotient isn't a whole number, therefore, it might make more sense to return a Float. Can you change the return value of average from an Integer to a Float?

# invoke a method that will iterate through each integer in the array and mutate them
#   invoke a method that converts each integer into a float
# end the loop
# enter a mathematical equation that returns the mean of integers in the array, ensuring the output will be a float

def average(array)
  array.map! do |num|
    num.to_f
  end
  array.sum / array.length
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])