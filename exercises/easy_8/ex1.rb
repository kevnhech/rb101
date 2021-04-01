# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array

# input: array
# output: integer
# rules: the array always contains at least one number

# initialize empty array `arr`
# initialize `idx` and assign it to integer `0`
# invoke a loop
#   break if `idx` equates to the length of the input array
#   append the first element to `arr`
#   reassign `arr` to the return value of method `sum` called on itself
#   increment `idx` by `1`
# end the block
# return `arr` as an integer

def sum_of_sums(array)
  arr = []
  idx = 0
  int = 0

  loop do
    break if idx == array.length
    arr << array[idx]
    int += arr.sum
    idx += 1
  end

  int
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35