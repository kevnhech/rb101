# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays

# input: two arrays
# output: new array
# rules: the results should be sorted by increasing value
#        neither argument is an empty array

# initialize empty array `arr`
# initialize `idx` and assign it to integer `0`
# initialize `pair_value` and assign it to `0`
# invoke a loop
#   break if `pair_value` equates to the size of the first array and if `idx` equates to the size of the second array
#   reassign `idx` to `0` if `idx` equates to the length of the second array
#   append the product of the first element of the first array and every element in the second array to `arr`
#   increment `idx` by `1`
#   increment `pair_value` by `1` if `idx` equates to the length of the second array
# end the block
# return the sorted version of `arr`

def multiply_all_pairs(arr1, arr2)
  arr = []
  idx = 0
  pair_value = 0

  loop do
    break if pair_value == arr1.length && idx == arr2.length
    idx = 0 if idx == arr2.length
    arr << arr1[pair_value] * arr2[idx]
    idx += 1
    pair_value += 1 if idx == arr2.length
  end

  arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]