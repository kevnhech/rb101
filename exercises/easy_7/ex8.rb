# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index

# input: two arrays
# output: a new array
# rules: both arrays contain the same number of elements

# initialize new array `arr`
# initialize `idx` and assign it to integer `0`
# invoke a loop method
#   break out of the loop if `idx` equates to the length of an input array
#   append the product of the first element of both arrays to `arr`
#   increment `idx` by `1`
# end the block
# return `arr`

def multiply_list(arr1, arr2)
  arr = []
  idx = 0

  loop do
    break if idx == arr1.length
    arr << arr1[idx] * arr2[idx]
    idx += 1
  end

  arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]