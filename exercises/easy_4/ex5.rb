# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# input: integer
# output: sum of numbers that are multiples of 3 and 5 that lie between 1 and the input
# rules: the number passed in as an integer greater than 1

# initialize array `arr`
# iterate through numbers `1` and the input
#   append the integers to `arr` if they are divisible by either `3` or `5`
# end the block
# return the sum of `arr`

def multisum(integer)
  arr = []
  1.upto(integer) do |num|
    arr << num if num % 3 == 0 || num % 5 == 0
  end
  arr.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
