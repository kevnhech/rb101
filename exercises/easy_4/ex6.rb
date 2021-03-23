# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# input: array of integers
# output: array of integers that have the running total from the original input
# rules: the output must be an array with the same number of elements as the input

# initialize array `arr`
# initialize `idx` and assign it to integer `0`
# initialize `total` and assign it to integer `0`
# invoke a `loop` method
#   break out of the loop when `idx` is equivalent the length of `arr`
#   increment `total` by an element of the array using `idx` to iterate over them, then append the return value to `arr`
#   increment `idx` by `1`
# close the block
# return `arr`

def running_total(array)
  arr = []
  idx = 0
  total = 0
  loop do
    break if idx == array.length
    total += array[idx]
    arr << total
    idx += 1
  end
  arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
