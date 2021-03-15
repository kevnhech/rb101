# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# input: a positive integer
# output: the sum of its digits
# rules: both the input and output must be positive

# initialize variable `arr`
# convert the integers into strings, split them into substrings of an array, then invoke a method that iterates through each string
#   append the integer version of the strings into `arr`
# end the loop
# return the sum of the array

def sum(num)
  arr = []
  num.to_s.split('').each do |str|
    arr << str.to_i
  end
  arr.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45