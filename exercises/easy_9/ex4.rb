# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

# input: integer
# output: array
# rules: the argument will always be a valid integer that is greater than 0

# initialize array `arr`
# invoke a loop method that counts from `1` up to the input integer
#   append the integer to `arr`
# end the block
# return `arr`

def sequence(integer)
  arr = []

  1.upto(integer) do |num|
    arr << num
  end

  arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]